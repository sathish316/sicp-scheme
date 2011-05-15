(define (filtered-accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (combiner (if (filter a)
                    (term a)
                    null-value)
                (filtered-accumulate combiner
                                     null-value
                                     term
                                     (next a)
                                     next
                                     b
                                     filter))))

(define (sum term a next b filter)
  (filtered-accumulate + 0 term a next b filter))

(define (identity i) i)

(define (inc i) (+ i 1))

(define (pass-thru x) true)

(define (sum-integers a b)
  (sum identity a inc b pass-thru))

(sum-integers 1 10)

(define (sum-primes a b)
  (sum identity a inc b prime?))

(sum-primes 1 10) ; 2 + 3 + 5 + 7

(define (sum-square-primes a b)
  (sum square a inc b prime?))

(sum-square-primes 1 10); 2^2 + 3^2 + 5^2 + 7^2

(define (prime? x)
  (define (next-odd n)
    (if (= n 2) 3 (+ n 2)))
  (define (divides? divisor dividend)
    (= (remainder dividend divisor) 0))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next-odd test-divisor)))))
  (define (smallest-divisor n)
    (find-divisor n 2))
  (cond ((= x 1) false)
        (else (= (smallest-divisor x) x))))

(prime? 1)
(prime? 13)
(prime? 15)


                   