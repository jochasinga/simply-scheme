;; Write a procedure to convert a temperature from Fahrenheit to Celsius,
;; and another to convert in the other direction. The two formulas are
;; `F=9/5C+32` and `C=5/9(F-32)`.

(define (fahrenheit-to-celsius d)
  (* (/ 5 9) (- d 32)))

(define (celsius-to-fahrenheit d)
  (+ (* (/ 9 5) d) 32))
