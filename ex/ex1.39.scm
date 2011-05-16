(define (cont-frac n d k)
  (define (frac i)
    (if (> i k)
        0
        (/ (n i)
           (- (d i)
              (frac (+ i 1))))))
  (frac 1))

(define (tan-cf x k)
  (cont-frac (lambda (i)
               (if (= i 1) x (square x)))
             (lambda (i)
               (- (* 2 i) 1))
             k))

(define pi 3.14159)

(tan 0)
(tan pi)
(tan (/ pi 6))
(tan (/ pi 4))
(tan (/ pi 2)) ; infinite

(tan-cf 0 10)
(tan-cf pi 10)
(tan-cf (/ pi 6) 10)
(tan-cf (/ pi 4) 10)
(tan-cf (/ pi 2) 10) ; infinite



