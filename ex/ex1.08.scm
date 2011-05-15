(define (cube x)
  (* x x x))

(define (cube-root x)
  (define tolerance 0.000000001)
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) tolerance))
  (define (improve guess)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))
  (define (cube-root-iter guess)
    (if (good-enough? guess)
        guess
        (cube-root-iter (improve guess))))
  (cube-root-iter 1.0))

(cube-root 125)
(cube-root 2)
