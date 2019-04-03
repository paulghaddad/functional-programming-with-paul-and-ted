;;; Invoking a function
;  (+ 2 2)

 ;;; Defining a variable
 (define my_var 5)
;  (display my_var)

 ;;; Define a procedure
 (define (sum x y)
   (+ x y))

; (sum 4 4)

;;; Basic primitives and data
; (display (= 2 2))
; (display (> 10 0))

(define x 10)
; (display (- x))

; (display (and (> x 0) (< x 100)))
; (display (or (> x 0) (= x 100)))
; (display (not #t))

;;; Conditionals - if

(define x 5)

(define (abs x)
  (if (> x 0)
  x ; note we don't need to surround this with parentheses
  (- x)))

; (abs 2) ; 2
; (abs -2) ; 2

;;; Conditionals - cond

(define (temperature temp)
  (cond ((< temp 32) "It's freezing")
        ((and (> temp 32) (< temp 80)) "It's nice!")
        ((> temp 80) "It's hot!")))

; (temperature 10)
; (temperature 60)
; (temperature 100)

(define (temperature-else temp)
  (cond ((< temp 32) "It's freezing")
        ((and (> temp 32) (< temp 80)) "It's nice!")
        (else "It's hot!")))

; (temperature-else 10)
; (temperature-else 60)
; (temperature-else 100)

;;; lambda
((lambda (x) (* x x)) 4) ; 16

; define is simply a named lambda
(define square (lambda (x) (* x x)))
(square 10)

;;; let for local variables

(define (sum-of-squares x y)
  (let ((a (* x x))
        (b (* y y)))

        (+ a b)))

(sum-of-squares 3 5)
