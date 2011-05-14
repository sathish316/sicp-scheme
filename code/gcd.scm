(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 16 24)
(gcd 16 28)
(gcd 206 40)
(gcd 204 40)
(gcd 53 212)