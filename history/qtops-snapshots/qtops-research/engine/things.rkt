#lang racket

(provide create-core-thing
         create-thing)

;; --- Procedure constructors (internal) ---
;; These build the procedures that get installed on a thing.
;; Named with > prefix: >foo takes a thing, returns a procedure.

(define (>procedures t)
  (λ ()
    (t 'call~~ (λ (T) T))))

(define (>procedure t)
  (λ (k)
    (define T (t 'call~~ (λ (T) T)))
    (if (hash-has-key? T k)
        (hash-ref T k)
        (raise-result-error (string->symbol (t 'name))
                            (format "thing with ~a procedure" k)
                            (format "~a with ~a procedures"
                                    (t 'name)
                                    (hash-keys T))))))

(define (>set-procedure! t)
  (λ (k p)
    (t 'call~~ (λ (T) (hash-set! T k p)))))

(define (>set-procedures! t)
  (λ (P)
    (for-each (λ (p) (t 'set-procedure! (car p) (cdr p))) P)))

(define (>remove-procedure! t)
  (λ (k)
    (t 'call~~ (λ (T) (hash-remove! T k)))))

(define (>has-procedure? t)
  (λ (k)
    (t 'call~~ (λ (T) (hash-has-key? T k)))))

(define (>with-procedure~~ t)
  (λ (k)
    (λ (#:alternate [alternate #f] . a)
      (if (t 'has-procedure? k)
          (if (null? a)
              (t k)
              (apply (t 'procedure k) a))
          (cond
            [(procedure? alternate) (alternate)]
            [alternate alternate]
            [else (void)])))))

(define (>prerender-string t)
  (λ (S)
    (λ ()
      (string-join
       (for/list ([s (in-list S)])
         (if (symbol? s) (t s) s))
       ""))))

(define (>name _t [n #f])
  (λ () (or n "thing")))

(define ((>set-name! t) n)
  (t 'set-procedure! 'name (λ () n))
  ;; keep term=? in sync with the new name
  (t 'set-procedure! 'name=? (>name=? t))
  (t 'set-procedure! 'term=? (>term=? t)))

(define (>name=? t)
  (λ (l)
    (or (string=? (t 'name) l)
        (string=? (string-downcase (t 'name)) l))))

;; term=? is the general "does this string refer to this thing?" predicate.
;; By default it delegates to name=?. Qualities like noun.rkt will replace
;; it with a version that also checks nouns and adjectives.
(define (>term=? t)
  (λ (l) (t 'name=? l)))

;; --- Core thing creation ---

(define (create-core-thing)
  (define T (make-hash))
  (define (t k . a)
    (if (hash-has-key? T k)
        (apply (hash-ref T k) a)
        (raise-argument-error
         'thing
         (format "~a is missing procedure ~a"
                 (if (hash-has-key? T 'name)
                     ((hash-ref T 'name))
                     "thing")
                 k)
         (hash-keys T))))
  (hash-set! T 'call~~ (λ (p) (p T)))
  t)

(define (create-thing [given-name "thing"] [additional-procedures #f])
  (define t (create-core-thing))
  ;; Bootstrap: install name and set-procedure! by hand,
  ;; then use set-procedures! for the rest.
  (t 'call~~ (λ (T) (hash-set! T 'name (>name t given-name))))
  (t 'call~~ (λ (T) (hash-set! T 'set-procedure! (>set-procedure! t))))
  (t 'set-procedure! 'set-procedures! (>set-procedures! t))
  (t 'set-procedures!
     (list (cons 'has-procedure? (>has-procedure? t))
           (cons 'procedures (>procedures t))
           (cons 'procedure (>procedure t))
           (cons 'remove-procedure! (>remove-procedure! t))
           (cons 'with-procedure~~ (>with-procedure~~ t))
           (cons 'prerender-string (>prerender-string t))
           (cons 'name=? (>name=? t))
           (cons 'term=? (>term=? t))
           (cons 'set-name! (>set-name! t))))
  (when additional-procedures
    (for-each
     (λ (P) (t 'set-procedures! (P t)))
     additional-procedures))
  (when given-name (t 'set-name! given-name))
  t)

(module+ test
  (require rackunit)
  (test-case "created thing is a procedure"
    (check-pred procedure? (create-thing))))
