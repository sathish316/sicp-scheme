(define (sos x y)
  (+ (sq x) (sq y)))

(define (sq x)
  (* x x))

(sos 3 4)

(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 2))
         (fib (- n 1)))))

(fib 2)
(fib 3)
(fib 6)