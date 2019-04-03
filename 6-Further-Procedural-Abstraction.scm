;;; We have created an abstraction around summing a sequence of numbers
;;; together, with a function applied to each term:

; (define (sum term a next b)
;   (if (> a b)
;       0
;       (+ (term a)
;          (sum term (next a) next b)))



;;; Our next step is to extend our example by creating a procedure that is the
;;; product of a series of numbers.

;;; 1 * 3 * 5 * 7 * 9 = 945

























;;; Define a product procedure that calculates the product of a range of
;;; numbers:


; (define (identity x) x)
; (define (skip x) (+ x 2))

; (define (product term a next b)
;   (display a)
;   (if (> a b)
;       1
;       (* (term a)
;          (product term (next a) next b))))

; (product identity 1 skip 10)
