(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(expt 5 3)