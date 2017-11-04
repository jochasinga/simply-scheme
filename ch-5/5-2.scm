;; For each of the following examples, write a procedure of two arguments that,
;; when applied to the sample arguments, returns the sample result. Your procedures
;; may not include any quoted data.

;; > (f1 '(a b c) '(d e f))
;; (B C D E)

;; > (f2 '(a b c) '(d e f))
;; (B C D E AF)

;; > (f3 '(a b c) '(d e f))
;; (A B C A B C)

;; > (f4 '(a b c) '(d e f))
;; BE

;; with extension
;; (define (f1 l1 l2)
;;  (sentence (car (cdr l1))
;;            (car (cdr (cdr l1)))
;;            (car l2)
;;            (car (cdr l2))))
;; without extension
(define (f1 l1 l2)
  (append
   (cdr l1)
   (cons (car l2)
         (list (car (cdr l2))))))

;; with extension
;; (define (f2 l1 l2)
;;  (sentence
;;   (butfirst l1)
;;   (butlast l2)
;;   (word (first l1) (last l2))))

;; without extension
;; there's probably a better solution than symbol-string conversion
(define (f2 l1 l2)
  (let ([fst (cdr l1)]
        [snd (cons (car l2) (cons (car (cdr l2)) '()))]
        [lst (cons 
	      (string->symbol
	       (string-append 
		(symbol->string (car l1))
                 (symbol->string
                  (let get-last ([l l2])
                    (if (null? (cdr l))
                        (car l)
                        (get-last (cdr l))))))) '())])
    (append fst snd lst)))
