(define phi (/ (+ 1 (sqrt 5)) 2))

(define (pow x y)
  (if (= y 1)
      x
      (* x (pow x (-1+ y)))))

(pow 3 3)

(define (fastfib n)
  (/ (pow phi n) (sqrt 5)))

(fastfib 6)