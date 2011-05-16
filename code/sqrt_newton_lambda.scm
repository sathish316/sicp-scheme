                                        ; Newton's method of finding roots of g(x) = 0
                                        ; The roots of g(x) = 0 is given by:
                                        ; f(x) = x - g(x)/Dg(x)
                                        ; At the fixed point of f(x):
                                        ; x - g(x)/Dg(x) = x
                                        ; => g(x) = 0

(define dx 0.000001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx))
          (g x))
       dx)))

;----- checking deriv
(define (cube x) (* x x x)); f(x) = x^3
((deriv cube) 5); df(x) = 3x^2

; g(x) |-> f(x)
(define (newtons-transform g)
  (lambda (x)
    (- x
       (/ (g x)
          ((deriv g) x)))))

; Fixed point of Newton's transform f(x)
(define (newtons-method g guess)
  (fixed-point (newtons-transform g) guess))

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
                                        ; y = sqrt(x)
                                        ; y^2 = x
                                        ; g(y) = y^2 - x
(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x))
                  1.0))

(sqrt 2)
(sqrt 9)

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (sqrt-x x)
  (fixed-point-of-transform (lambda (y) (- (square y) x))
                            newtons-transform
                            1.0))

(sqrt-x 2)


  