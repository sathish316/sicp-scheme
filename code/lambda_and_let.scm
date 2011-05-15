(define (plus4 x) (+ x 4))
(plus4 5)

(define plus4 (lambda (x) (+ x 4)))
(plus4 5)

((lambda (x y z)
  (+ x
     y
     (square z))) 1 2 3)

                                        ; f(x,y) = x*(1+xy)^2 + y(1-y) + (1+xy)(1-y)

(define (f x y)
  (define (f-helper a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
  (f-helper (+ 1 (* x y))
            (- 1 y)))

(f 5 10)

(define (f x y)
  ((lambda (a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
   (+ 1 (* x y))
   (- 1 y)))

(f 5 10)

(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))

(f 5 10)

(define (f x y)
  (define a (+ 1 (* x y)))
  (define b (- 1 y))
  (+ (* x (square a))
     (* y b)
     (* a b)))

(f 5 10)

