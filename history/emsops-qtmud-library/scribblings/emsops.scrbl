#lang scribble/manual

@(require scribble/eval
	  (for-label racket)
	  (only-in (for-label "../main.rkt")))

@(define emsops-eval (make-base-eval))

@title{emsOps: emsenn's stack of qtOps declarations}

@author{emsenn}

@defmodule[emsops]

@emph{@bold{emsOps}} is a @quote{stack} of declarations written on top of qtOps, another Racket collection for manipulating information through the metaphor of performing operations on things with qualities.

@table-of-contents[]

@include-section["services/services.scrbl"]
@include-section["qualities/qualities.scrbl"]
@include-section["domains/domains.scrbl"]
