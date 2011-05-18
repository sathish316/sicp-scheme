(define (mul a b)
  (mul-iter 0 a b))

(define (mul-iter p a b)
  (if (= b 0)
      p
      (mul-iter (+ p a) a (- b 1))))

(mul 5 6)

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (mul-fast a b)
  (mul-fast-iter 0 a b))

(define (mul-fast-iter p a b)
  (cond ((= b 0) p)
        ((even? b) (mul-fast-iter p (double a) (halve b)))
        (else (mul-fast-iter (+ p a) a (- b 1)))))

(mul-fast 5 6)
(mul-fast 6 6)