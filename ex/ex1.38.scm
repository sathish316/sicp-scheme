(define (cont-frac n d k)
  (define (frac i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i)
              (frac (+ i 1))))))
  (frac 1))

(define (divides? divisor dividend)
  (= (remainder dividend divisor) 0))

(define (n i) 1.0)

(define (d i)
  (let ((j (+ i 1)))
    (if (divides? 3 j)
        (* 2 (/ j 3))
        1)))

(define (e k)
  (+ 2
     (cont-frac n d k)))

(e 10);e = 2.71828