(define (avg x y)
  (* 0.5 (+ x y)))

(define (avg-damp f)
  (lambda (x)
    (avg x (f x))))

((avg-damp square) 10)

(define (fixed-point f initial-guess)
  (define tolerance 0.000001)
  (define (close-enough? u v)
    (< (abs (- u v)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try initial-guess))

(define (sqrt x)
  (fixed-point (avg-damp (lambda (y) (/ x y))) 1.0))

(sqrt 2)

(define (cube-root x)
  (fixed-point (avg-damp (lambda (y) (/ x (expt y 2)))) 1.0))

(cube-root 125)

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (sqrt-x x)
  (fixed-point-of-transform (lambda (y) (/ x y))
                            avg-damp
                            1.0))

(sqrt-x 2)