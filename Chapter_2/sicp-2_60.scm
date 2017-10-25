#! /usr/local/bin/csi -s
(use sicp)

(define (element-of-set? x set)
    (cond ((null? set) #f)
          ((eq? x (car set)) #t)
          (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
   (cons x set))

(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))

(define (union-set set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        (else (union-set (cdr set1) (adjoin-set (car set1) set2)))))


;; Test print:

(print (union-set '(3 f a) '(4 3 g a)))
;; >> (f 4 3 g a)


