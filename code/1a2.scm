(+ 3 4 8)

(+ (* 3 (+ 7 19.5)))

(+ (* 3 5)
   (* 47
      (- 20 6.8)))

(define a (* 5 5))

(* a a)

(define b (+ a (* 5 a)))

(+ a (/ b 5))

(* 5 5)

(* 6 6)

(* 1001 1001)

(define (square x) (* x x))

(square 10)

(define square (lambda (x) (* x x)))

(square 1001)

(square (+ 5 7))

(+ (square 3) (square 4))

(square (square (square 1001)))

square

(define (average x y)
  (/ (+ x y) 2))

(define (mean-square x y)
  (average (square x) (square y)))

(mean-square 3 4)

square

+

(define (abs x)
  (cond ((< x 0) (- x))
        ((= x 0) 0)
        ((> x 0) x)))

(abs 5)

(abs -5)

(abs 0)

(- 5)

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(abs 10)
(abs 0)
(abs -10)

(define a (* 5 5))

a

(a)

(RESTART 1)

(define (d) (* 5 5))

(d)

d