;; Write a procedure that comutes the absolute value of its
;; argument by finding the square root of the square of the argument.

(define (abs x)
  (letrec ([square (lambda (x) (* x x))])
    (let ([squared (square x)])
      (sqrt squared))))
