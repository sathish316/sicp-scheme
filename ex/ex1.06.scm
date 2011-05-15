(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(if (= 2 3) 0 5) ; 5

(if (= 1 1) 0 5) ; 0

(new-if (= 2 3) 0 5) ; 5

(new-if (= 1 1) 0 5) ; 0

(define (average x y) (/ (+ x y) 2))

(define (sqrt x)
  (define tolerance 0.000001)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) tolerance))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (try guess)
    (new-if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1.0))

(sqrt 2) ; new-if goes into infinite recursion because it evaluates all its arguments due to applicative order.
;if as a special form does not evaluate all its arguments as in normal order evaluation