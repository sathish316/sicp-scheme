(define (sqrt x)
  (newton (lambda (y) (- x (square y)))
          1))

(define (newton f guess)
  (define df (derivative f))
  (fixed-point
   (lambda (x)
     (- x (/ (f x) (df x))))
   guess))

(define dx 0.000001)

(define derivative
  (lambda (f)
    (lambda (x)
      (/ (- (f (+ x dx))
            (f x))
         dx))))

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