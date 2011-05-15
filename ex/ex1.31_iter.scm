(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial 5)

(define (product term a next b)
  (define (product-iter i result)
    (if (> i b)
        result
        (product-iter (next i)
                      (* (term i) result))))
  (product-iter a 1))

(define (identity x) x)

(define (inc x) (+ x 1))

(define (factorial n)
  (product identity 1 inc n))

(factorial 5)

(define (pi-approx n)
  (define (pi-term i)
    (/ (* i (+ i 2)) (* (+ i 1) (+ i 1))))
  (define (next-even i)
    (+ i 2))
  (* 4.0
     (product pi-term
              2
              next-even
              n)))

(pi-approx 1000)
              
      