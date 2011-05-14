(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))

(define (sqrt x)
  (try 1 x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (abs x)
  (if (< x 0) (- x) x))

(define (square x) (* x x))

(sqrt 2)