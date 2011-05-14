(define (sqrt x)
  (fixed-point
   (lambda (y) (average y (/ x y)))
   1.0))

(define (average x y)
  (/ (+ x y) 2))

(define (fixed-point f start)
  (define tolerance 0.000001)
  (define (close-enuf? x y)
    (< (abs (- x y)) tolerance))
  (define (iter old new)
    (if (close-enuf? old new)
        new
        (iter new (f new))))
  (iter start (f start)))

(sqrt 2) 