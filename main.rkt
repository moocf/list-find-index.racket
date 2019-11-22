#lang racket

; (list-index.pos pred lst pos): F X L X N -> N
; returns pos-based position of first element in lst that satisfies predicate pred
(define list-index.pos
  (lambda (pred lst pos)
    (if (null? lst)
        #f
        (if (pred (car lst))
            pos
            (list-index.pos pred (cdr lst) (+ pos 1))))))

; (list-index pred lst): F X L -> N
; returns 0-based position of first element in lst that satisfies predicate pred
(define list-index
  (lambda (pred lst)
    (list-index.pos pred lst 0)))
