(define (average x y)
  (/ (+ x y) 2))

(define (sqrt-old x)
  (define tolerance 0.000000001)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) tolerance))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(define (sqrt x)
  (define tolerance 0.000000001)
  (define (good-enough-guess? guess next-guess)
    (< (abs (- guess next-guess)) tolerance))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough-guess? guess (improve guess))
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt-old 2)
(sqrt-old 1e-100) ; completes but not accurate
(sqrt-old 1e-200)
(sqrt-old 1e30)
(sqrt-old 1e50) ; does not complete 

(sqrt 2)
(sqrt 1e-100) ; completes with accurate result
(sqrt 1e-200)
(sqrt 1e30) 
(sqrt 1e50) ; completes
