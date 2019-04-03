;;; Calculate the squares of the following numbers: 2 5 10

(* 2 2)

(* 5 5)

(* 10 10)


















;;; Let's express this concept of squaring at a higher level of abstraction
;;; by creating a procedure square

(define (square x)
  (* x x ))

(square 10)



















;;; This serves us well, but we're restricted to patterns that only accept
;;; primitives as arguments. Many patterns can be used with different
;;; procedures. We can use higher-order procedures to build higher-level
;;; abstractions.

(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

(sum-integers 1 10)

(define (sum-squares a b)
  (if (> a b)
      0
      (+ (* a a) (sum-squares (+ a 1) b))))

(sum-squares 1 10)

(define (sum-every-other a b)
  (if (> a b)
      0
      (+ a (sum-every-other (+ a 2) b))))

(sum-every-other 1 10)








;;; The conceptual pattern is summing a sequence. What are the two "things" that
;;; change in the three cases above?

















;;; What changes is the operation performed on the item before it's added to the
;;; sum and how we move to the next item. Let's write a procedure that allows us
;;; to pass these in and allow us to have a single function for all three cases:

; (define (sum term a next b)
;   (if (> a b)
;       0
;       (+ (term a)
;          (sum term (next a) next b)))


