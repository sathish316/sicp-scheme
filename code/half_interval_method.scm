                                        ; y = f(x)
                                        ; f(a) < 0 < f(b)
                                        ; Rexur with average(a,b)

(define (search f neg-point pos-point)
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        mid-point
        (let ((mid-point-value (f mid-point)))
          (cond ((positive? mid-point-value) (search f neg-point mid-point))
                ((negative? mid-point-value) (search f mid-point pos-point))
                (else mid-point))))))

(define tolerance 0.001)

(define (close-enough? x y)
  (< (abs (- x y)) tolerance))

(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value)
                (positive? b-value))
           (search f a b))
          ((and (positive? a-value)
                (negative? b-value))
           (search f b a))
          (else
           (error "Values are not of opposite sign" a b)))))

(define (average x y)
  (/ (+ x y) 2.0))

                                        ; f(x) = sin x = 0
(half-interval-method sin 2.0 4.0)

                                        ; f(x) = x^3 - 2x - 3
(half-interval-method (lambda (x) (- (* x x x)
                                     (* 2 x)
                                     3))
                      1.0
                      2.0)