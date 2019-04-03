;;; Solution - Map

(define (map fn items)
    (if (null? items)
            '()
                (cons (fn (car items))
                                (map fn (cdr items)))))


; (map (lambda (x) (* x 2)) (list 1 2 3 4 5)) 
; (map (lambda (x) (expt x 2)) (list 1 2 3 4 5)) 
