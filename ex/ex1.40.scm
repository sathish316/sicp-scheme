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

(define (deriv g)
  (define dx 0.000001)
  (lambda (x)
    (/ (- (g (+ x dx))
          (g x))
       dx)))

(define (newtons-transform g)
  (lambda (x)
    (- x
       (/ (g x)
          ((deriv g) x)))))

(define (newtons-method g)
  (fixed-point (newtons-transform g) 1.0))

(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (square x))
       (* b x)
       c)))

(define (cubic-roots a b c)
  (newtons-method (cubic a b c)))

                                        ; x^3 - 3x^2 - 2x + 4 = 0
(cubic-roots -3 -2 4); x = 1
