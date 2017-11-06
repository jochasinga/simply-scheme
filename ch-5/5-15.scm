;; Write a procedure `first-two` that takes a word as its argument,
;; returning a two-letter word containing the first two letters of the argument.
;; > (first-two 'ambulatory)
;; AM

(define (first-two word)
  (let recur ([word! word]
	      [len (string-length
		    (symbol->string word))])
    (if (= len 2)
        word!
        (recur (butlast word!) (- len 1)))))
