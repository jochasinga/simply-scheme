;; "Scientific notation" is a way to represent very small or very large numbers
;; by combining a medium-sized number with a power of 10. For example, 5×107 represents
;; the number 50000000, while 3.26×10-9 represents 0.00000000326 in scientific notation.
;; Write a procedure scientific that takes two arguments, a number and an exponent of 10,
;; and returns the corresponding value:
;;
;; > (scientific 7 3)
;; 7000
;;
;; > (scientific 42 -5)
;; 0.00042

(define (scientific n base)
  (let ([b (cond
	    ((> base 0) (expt 10 base))
	    (else (/ 0.1 (expt 10 (* -1 base)))))])
    (* n b)))

