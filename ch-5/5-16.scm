;; Write a procedure two-first that takes two words as arguments,
;; returning a two-letter word containing the first letters of the two arguments.
;;
;; > (two-first 'brian 'epstein)
;; BE

(define (two-first w1 w2)
  (word (first w1) (first w2)))

;; Now write a procedure two-first-sent that takes a two-word sentence
;; as argument, returning a two-letter word containing the first
;; letters of the two words.
;;
;; > (two-first-sent '(brian epstein))
;; BE

(define (two-first-sent sent)
  (word (first (car sent))
        (first (car (cdr sent)))))
