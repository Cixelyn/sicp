;;;; ex 1.4
;;; describe the behavior of the following:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; this function adds `a` to the absolute value of `b`
;; this is accomplished by picking the operator itself from
;; a compound expression such that `b` is subtraced when negative
;; and added with positive, giving the absolute-value sum of the expr
