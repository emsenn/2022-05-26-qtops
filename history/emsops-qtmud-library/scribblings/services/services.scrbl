#lang scribble/manual

@(require scribble/eval
	  (for-label racket))

@title[#:style '(toc)]{emsOps Services}

@author{emsenn}

@defmodule[emsops/services]

emsOps provides a few services: ways of interacting with the stack.

@local-table-of-contents[]

@include-section["mudsocket.scrbl"]
@include-section["webserver.scrbl"]
