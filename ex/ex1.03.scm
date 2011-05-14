(define (square x) (* x x))

(define (sos x y)
  (+ (square x)
     (square y)))

(define (sos2 a b c)
  (cond ((and (<= a b) (<= a c)) (sos b c))
        ((and (<= b a) (<= b c)) (sos a c))
        (else (sos a b))))

(define (max x y)
  (if (> x y) x y))

(define (min x y)
  (if (< x y) x y))

(define (sos2 x y z)
  (sos (max x y)
       (max (min x y) z)))

(sos2 2 3 4)
(sos2 2 4 3)
(sos2 3 2 4)
(sos2 3 4 2)
(sos2 4 2 3)
(sos2 4 3 2)
(sos2 2 3 3)
(sos2 3 3 4)
(sos2 4 3 3)
(sos2 3 4 3)
(sos2 3 3 3)