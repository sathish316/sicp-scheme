(define (fast-expt b n)
  (fast-expt-iter 1 b n))

(define (fast-expt-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter a (square b) (/ n 2)))
        (else (fast-expt-iter (* a b) b (- n 1)))))

(fast-expt 5 0)
(fast-expt 5 1)
(fast-expt 5 5)
(fast-expt 5 6)
(Fast-expt 5 20)

(fast-expt 2 10)
(fast-expt 2 20)
        
      