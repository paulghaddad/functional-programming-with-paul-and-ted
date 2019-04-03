;;; So we currently have two procedures that do fairly similar things:

; (define (sum term a next b)
;   (if (> a b)
;       0
;       (+ (term a)
;          (sum term (next a) next b)))


; (define (product term a next b)
;   (display a)
;   (if (> a b)
;       1
;       (* (term a)
;          (product term (next a) next b))))

;;; The goal for this exercise is to create a higher-level abstraction,
;;; accumulate (also known as reduce or fold), that combines a collection of
;;; terms. The two things that differ in the procedures is how the terms are
;;; combined and the value to return at the end.

; (accumulate combiner null-value term a next b)

;;; This function takes in the following arguments:
  ; * combiner: function that combines the current term with the previous
  ; accumulation
  ; : null-value: what base to use when the terms run out


;;; Rewrite sum and product in terms of the general accumulate procedure

;;; Test cases:
;;; (accumulate + 0 identity 0 inc 10) => 55
;;; (accumulate * 1 identity 1 inc 5) => 120
