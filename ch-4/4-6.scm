;; Define a procedure `fourth` that computes the fourth power of its argument.
;; Do this two ways, first using the multiplication function, and then using
;; `square` and not (directly) using multiplication.

;; First way
(define (fourth-1 x)
  (* x x x x))

;; Second way
(define (fourth-2 x)
  (letrec ([square (lambda (x) (* x x))])
    (square (square x))))


