#lang racket

; (list.find-index.pos pred lst pos): F X L X N -> N
; returns pos-based position of first element in lst that satisfies predicate pred
(define list.find-index.pos
  (lambda (pred lst pos)
    (if (null? lst)
        #f
        (if (pred (car lst))
            pos
            (list.find-index.pos pred (cdr lst) (+ pos 1))))))

; (list.find-index pred lst): F X L -> N
; returns 0-based position of first element in lst that satisfies predicate pred
(define list.find-index
  (lambda (pred lst)
    (list.find-index.pos pred lst 0)))
