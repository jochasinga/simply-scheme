;; Write a procedure to compute the tip you should leave at a restaurant.
;; It should take the total bill as its argument and return the amount of the tip.
;; It should tip by 15%, but it should know to round up so that the total amount
;; of money you leave (tip plus original bill) is a whole number of dollars.
;; (Use the ceiling procedure to round up.)

(define (tip total)
  (let* ([tip-percentage 0.15]
         [net (+ total (* total tip-percentage))])
    (- (ceiling net) total)))
