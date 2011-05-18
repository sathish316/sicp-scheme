(define (f n)
  (cond ((< n 3) n)
        (else (+ (* 3 (f (- n 3)))
                 (* 2 (f (- n 2)))
                 (f (- n 1))))))

(f 10)

(define (g n)
  (define (g-iter g3 g2 g1 i)
    (if (= i 0)
        g3
        (g-iter g2 g1 (+ (* 3 g3)
                         (* 2 g2)
                         g1)
                (- i 1))))
  (g-iter 0 1 2 n))

(g 10)

