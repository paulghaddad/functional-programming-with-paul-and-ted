;;; Solution - Filter


(define (filter fn items)
    (cond ((null? items) '())
                  ((fn (car items)) (cons (car items) (filter fn (cdr items))))
                          (else (filter fn (cdr items)))))


; (filter even? (list 1 2 3 4 5 6 7 8 9 10))

