(define (expmod base exp n)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) n)) n))
        (else (remainder (* base (expmod base (- exp 1) n)) n))))

(expmod 2 5 7)

(define (fermat-test n)
  (define (try a)
    (= (expmod a n n) a))
  (try (random n)))

(random 5)

(fermat-test 53)
(fermat-test 55)
(fermat-test 561)

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(fast-prime? 53 5)
(fast-prime? 343 10)
(fast-prime? 561 10) ;wrong for Carmichael numbers
