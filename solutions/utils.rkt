#lang racket
#| My frequently used utils |#

(provide square aprox-equal-at even?)

(define (square arg) (* arg arg))

(define (aprox-equal-at arg1 arg2 accuracy)
  (<= (abs (- arg1 arg2)) accuracy))

(define (even? number) (= (remainder number 2) 0))