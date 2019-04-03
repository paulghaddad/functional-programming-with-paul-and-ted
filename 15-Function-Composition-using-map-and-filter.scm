;;; Now we can use composition to both filter and map over a list of items

(define (square x) (* x x))

(define (map fn items)
    (if (null? items)
            '()
                (cons (fn (car items))
                                (map fn (cdr items)))))

(define (filter fn items)
    (cond ((null? items) '())
                  ((fn (car items)) (cons (car items) (filter fn (cdr items))))
                          (else (filter fn (cdr items)))))


; (map (lambda (x) (square x)) (filter even? (list 1 2 3 4 5 6 7 8 9 10)))
