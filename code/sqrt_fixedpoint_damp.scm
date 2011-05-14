(define (sqrt x)
  (fixed-point
   (average-damp (lambda (y) (/ y x)))
   1.0))

(define (fixed-point f start)
  (define tolerance 0.000001)
  (define (close-enuf? x y)
    (< (abs (- x y)) tolerance))
  (define (iter old new)
    (if (close-enuf? old new)
        new
        (iter new (f new))))
  (iter start (f start)))

(define average-damp
  (lambda (f)
    (lambda (x)
      (average (f x) x))))

(sqrt 2)
