;;;; ex 1.3
;;; define a procedure that takes 3 numbers as arguments
;;; and returns the sum of the squares of the two larger numbers

(define (sumsq a b)
  (+ (* a a) (* b b)))

(define (func a b c)
  (cond ((and (<= a b) (<= a c)) (sumsq b c))
        ((and (<= b c) (<= b a)) (sumsq a c))
        ((and (<= c a) (<= c b)) (sumsq a b))))
