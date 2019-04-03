;;; In Scheme, the pair is the basic construct that allows us to
;;; create more complex data objects

(define a_pair (cons 10 100))

; a_pair

;;; We can extract the two parts of a pair

; (car a_pair)
; (cdr a_pair)













;;; Using pairs, we can create a data abstration over a general concept, in this
;;; case a person's name

(define (create-name first last) (cons first last))

(define (first-name name) (car name))

(define (last-name name) (cdr name))

(define new-name (create-name "Ted" "Monchamp"))

; (first-name new-name)
; (last-name new-name)







;;; We can use cons to form more complex data. Let's represent the sequence from
;;; 1 to 5



; (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 '())))))








;;; This isn't the most friendly to use, but we have a list construct that makes
;;; this much easier, and is equivalent to nesting pairs


; (list 1 2 3 4 5 6 7 8 9 10)
