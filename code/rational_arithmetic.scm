(define (make-rat n d)
  (define g (gcd n d))
  (cons (/ n g) (/ d g)))

(define (numer r)
  (car r))

(define (denom r)
  (cdr r))

(define (+rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (*rat x y)
  (make-rat
   (* (numer x) (numer y))
   (* (denom x) (denom y))))

(define a (make-rat 1 2))
(define b (make-rat 1 4))

(+rat a b)
(-rat a b)
(*rat a b)
  
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 4 8)
(gcd 2 8)