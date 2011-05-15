
(define (fixed-point f)
  (define tolerance 0.000001)
  (define (close-enuf? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enuf? guess next)
          next
          (try next))))
  (try 1.0))

                                        ; y = cos x
                                        ; Fixed point: x = cos x
(fixed-point cos)

                                        ; y = sin x + cos x
                                        ; Fixed point: x = sin x + cos x
(fixed-point (lambda (x)
               (+ (sin x)
                  (cos x))))

                                        ; y = sqrt(x)
                                        ; y^2 = x
                                        ; y = x/y
                                        ; Fixed point x = x/y at y = sqrt(x)
(define (sqrt x)
  (fixed-point (lambda (y) (/ x y))))

(sqrt 9) ; infinite recursion or oscillation: y = x/y
                                        ; (try 1) => 9
                                        ; (try 9) => 1
                                        ; (try 1) => 9 ....

                                        ; y = x/y
                                        ; 2y = (y + x/y)
                                        ; y = 1/2 (y + x/y)

(define (sqrt x)
  (fixed-point (lambda (y) (* 0.5 (+ y
                                     (/ x y))))))

(sqrt 2)