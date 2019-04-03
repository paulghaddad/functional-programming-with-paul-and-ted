;;; Create a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers

;;; Examples:
; (sum-of-squares-two-largest 2 4 8) => 80

(define (square a) (* a a))

(define (square-of-sums a b)
  (+ (square a) (square b)))

  (define (sum-of-squares-two-largest a b c)
    (cond ((and (> a c) (> b c)) (square-of-sums a b))
            ((and (> a b) (> c b)) (square-of-sums a c))
            (else (square-of-sums b c))))

(sum-of-squares-two-largest 2 4 8)
