(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

(define size 2)

size

(* 5 size)

(define pi 3.14159)

(define radius 10)

(* pi (* radius radius))

(define circumference (* 2 pi radius))

circumference

(* (+ 2
      (* 4 6))
   (+ 3 5 7))

(define (square x) (* x x))

(square 21)

(square (+ 2 5))

(square (square 3))

(+ (square x) (square y))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1)
                  (* a 2)))

(f 5)

(define (abs x)
  (cond ((< x 0) (- x))
        ((= x 0) 0)
        ((> x 0) x)))

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs x)
  (if (< x 0) (- x) x))

(abs -5)
(abs 0)
(abs 5)

(define x 6)
(and (> x 5) (< x 10))

(define (>= x y)
  (or (> x y) (= x y)))

(define (>= x y)
  (not (< x y)))

(>= 5 3)

(>= 5 5)

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))