;; Write a procedure `third` that selects the third letter of a word
;; (or the third word of a sentence).

(define (third s)
  (let aux ([s! s] [c 1])
    (cond ((= c 3)
	   (cond ((null? s!)
		  (cond ((list? s!) '())
			(else s!)))
		 (else
		  (cond ((list? s!) (car s!))
			(else (first s!))))))
	  (else (aux
		 (cond ((list? s!) (cdr s!))
		       (else (butfirst s!)))
		 (+ c 1))))))
