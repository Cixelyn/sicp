;;; Ex 1.1
;;; What is the result printed by the interpreter for each expr

10
;; 10

(+ 5 3 4)
;; 12

(- 9 1)
;; 8

(/ 6 2)
;; 3

(+ (* 2 4) (- 4 6))
;; 6

(define a 3)
;; a <= 3

(define b (+ a 1))
;; b <= 4

(+ a b (* a b))
;; 19

(= a b)
;; #f

(if (and (> b a) (< b (* a b)))
    b
    a)
;; true, so 4

(cond ((= a 4) 6)           ; false
      ((= b 4) (+ 6 7 a))   ; true
      (else 26))
;; 16

(+ 2 (if (> b a) b a))
;; 6

(* (cond ((> a b) a)  ; false
         ((< a b) b)  ; true, b=4
         (else -1))   ;
   (+ a 1))           ; 3+1=4
;; 16
