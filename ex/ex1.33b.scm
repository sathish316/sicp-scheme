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

(define (product term a next b filter)
  (filtered-accumulate * 1 term a next b filter))

(define (identity i) i)

(define (inc i) (+ i 1))

(define (pass-thru x) true)

(define (factorial n)
  (product identity 1 inc n pass-thru))

(factorial 5)

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b
           (remainder a b))))

(gcd 10 20)
(gcd 16 24)

(define (product-of-coprimes n)
  (define (coprime? i)
    (= (gcd i n) 1))
  (product identity 1 inc n coprime?))

(= (product-of-coprimes 10) (* 1 3 7 9))
(= (product-of-coprimes 15) (* 1 2 4 7 8 11 13 14))


                   