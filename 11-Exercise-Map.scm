;;; This pattern of transforming each element of a list is called map

;;; Our goal in this exercise is to create a procedure, map, that can be used
;;; within multiply-list and apply-exponent-to-list from the last section to
;;; apply the common pattern.

; (multiply-list (list 1 2 3 4 5) 2) => (2 4 6 8 10)
; (apply-exponent-to-list (list 1 2 3 4 5) 2) (1 4 9 16 25)


;;; The function signature for map is (map fn items)

; (define (map fn items)
;   (if (null? items)
;     '()
;     (cons (fn (car items))
;           (map fn (cdr items)))))

;;; Hint: you can pass in a lambda to map


; (map (lambda (x) (* x 2)) (list 1 2 3 4 5)) 
; (map (lambda (x) (expt x 2)) (list 1 2 3 4 5)) 
