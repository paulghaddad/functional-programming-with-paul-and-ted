;;; Let's do the first one together and the other two as exercises

;;; Using our sum procedure, our goal is to rewrite our three examples of
;;; summing a sequence

(define (sum term a next b)
    (if (> a b)
              0
                    (+ (term a)
                                (sum term (next a) next b))))

(define (identity x) x)
(define (increment x) (+ x 1))

(define (sum-integers a b)
    (sum identity a increment b))

(sum-integers 1 10)


;;; Exercise 1: Create a procedure to find the sum of squares from 1 to 10. The
;;; answer should be 385.

; (sum-squares 1 10)







;;; Exercise 2: Create a procedure to find the sum of every other number from 1
;;; to 10 (1, 3, 5..9). The answer should be 25.

; (sum-every-other 1 10)
