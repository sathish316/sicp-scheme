(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner
                            null-value
                            term
                            (next a)
                            next
                            b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (identity i) i)

(define (inc i) (+ i 1))

(define (sum-integers a b)
  (sum identity a inc b))

(sum-integers 1 10)

(define (factorial n)
  (product identity 1 inc n))

(factorial 5)


                   