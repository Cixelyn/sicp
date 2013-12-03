;;;; exercise 1.5
;;; explain applicative-order evaluation vs. normal order
;;; in the following eample

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; the statement (p) cannot execute, as the function `p` attempts to return itself from
;; within its own definition. it cannot use itself without first evaluating itself, which
;; creates a problem of infinite recursion

;; in applicative order, this statement fails as the operands are first evaluated.
;; 0 evaluates fine, but (p) locks the interpreter into an infinite recursion scenario

(test 0 (p))

;; in normal order form, the expression is expanded as such

(test 0 (p))

(if (= 0 0)
    0
    (p))

(if #f 0 (p))

0

;; because the procedures are first expanded in normal order, in a normal order interpreter,
;; the problematic statement `(p)` never has to execute, as the `if` operator will evaluate the
;; predicate to be true, and then return the first consequenct (without having to evaluate the
;; alternative)

 