(define (cont-frac n d k)
  (define (frac i)
    (cond ((> i k) 0)
          (else (/ (n i)
                   (+ (d i) (frac (+ i 1)))))))
  (frac 1))

(define phi 1.6180339887)

(/ 1.0
   (cont-frac (lambda (i) 1.0)
              (lambda (i) 1.0)
              12))