(define (avg x y)
  (* 0.5 (+ x y)))

(define (avg-damp f)
  (lambda (x)
    (avg x (f x))))

((avg-damp square) 10)

(define (fixed-point f)
  (define tolerance 0.000001)
  (define (close-enough? u v)
    (< (abs (- u v)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try 1.0))

(define (sqrt x)
  (fixed-point (avg-damp (lambda (y) (/ x y)))))

(sqrt 2)

(define (cube-root x)
  (fixed-point (avg-damp (lambda (y) (/ x (expt y 2))))))

(cube-root 125)  