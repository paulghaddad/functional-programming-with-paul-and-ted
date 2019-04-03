;;; Like Accumulate, another very common pattern is applying a transform to each
;;; item in a list. Say we want to multiply each element in the following list

;;; (1 2 3 4 5) => multiply by 2 => (2 4 6 8 16)




;;; We can start by writing a procedure to do just this



(define (multiply-list numbers factor)
    (if (null? numbers)
            '()
                (cons (* (car numbers) factor)
                                (multiply-list (cdr numbers) factor))))

(multiply-list (list 1 2 3 4 5) 2)














;;; But now let's say we want to take the square of each of the numbers


(define (apply-exponent-to-list numbers exponent)
    (if (null? numbers)
            '()
                (cons (expt (car numbers) exponent)
                                (apply-exponent-to-list (cdr numbers)
                                                        exponent))))

(apply-exponent-to-list (list 1 2 3 4 5) 2)
; (apply-exponent-to-list (list 1 2 3 4 5) 3)


;;; Could we identify the common pattern between the procedures and create a
;;; procedure at a higher level of abstraction?
