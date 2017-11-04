;; Each of the following procedure definitions has an error of some kind.
;; Say what's wrong and why, and fix it:
;;
;;
;; (define (sphere-volume r)
;;   (* (/ 4 3) 3.141592654)
;;   (* r r r))
;;
;; Answer: Two return values
;; Correction:
(define (sphere-volume r)
  (* (/ 4 3) 3.141592654 (* r r r)))

;; (define (next x)
;;   (x + 1))
;;
;; Answer: Not using prefix notation
;; Correction:
(define (next x)
  (+ x 1))

;; (define (square)
;;   (* x x))
;;
;; Answer: No formal argument
;; Correction:
(define (square x)
  (* x x))

;; (define (triangle-area triangle)
;;   (* 0.5 base height))
;;
;; Answer: Variables not defined in formal arguments
;; Correction:
(define (triangle-area base height)
  (* 0.5 base height))

;; (define (sum-of-square (square x) (square y))
;;   (+ (square x) (square y)))
;;
;; Answer: square invoked in the formal arguments
;; Correction:
(define (sum-of-square x y)
  (letrec ([square (lambda (x) (* x x))])
    (+ (square x) (square y))))



