(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

                                        ;Normal order
(test 0 (p))
(if (= 0 0) 0 (p))
0 ; (p) is never evaluated

                                        ;Applicative order (Scheme)
(test 0 (p))
(test 0 (p)) ; eval args
(test 0 (p)) ; eval args (infinite loop)