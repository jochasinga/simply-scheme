;; (A harder problem for hotshots: Can you write procedures that go in the other direction? So you'd have
;;
;; > (sci-coefficient 7000)
;; 7
;;
;; > (sci-exponent 7000)
;; 3

(define (sci-coefficient n)
  (if (zero? (modulo n 10))
      (sci-coefficient (* n 0.1))
      (if (< n 10)
	  n
	  (/ n 10))))

(define (sci-exponent n)
  (let aux ([a 0] [b n])
    (if (zero? (modulo b 10))
	(aux (+ a 1) (* b 0.1))
	(if (< b 10)
	    a
	    (+ a 1)))))
