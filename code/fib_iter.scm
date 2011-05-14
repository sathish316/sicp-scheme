(define (fib n)
  (fib-iter 0 1 n))

(define (fib-iter a b n)
  (if (= count 0)
      a
      (fib-iter b (+ a b) (-1+ n))))

(fib 5)
(fib 6)
(fib 7)