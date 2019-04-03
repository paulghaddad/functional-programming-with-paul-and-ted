(define (accumulate combiner null-value term a next b)
  (if (> a b)
        null-value
          (combiner (term a)
                         (accumulate combiner null-value term (next a) next
                                     b))))

(define (identity x) x)
(define (increment n) (+ n 1))

(accumulate + 0 identity 0 increment 10)
; (accumulate * 1 identity 1 increment 5)
