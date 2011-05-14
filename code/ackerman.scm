(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)

(A 2 4)

(A 3 3)

(define (f n)
  (A 0 n))

(define (fd n)
  (* 2 n))

(f 10)
(fd 10)

(define (g n)
  (A 1 n))

(define (gd n)
  (pow 2 n))

(g 5)

(gd 5)

(define (pow x y)
  (if (= y 1)
      x
      (* x (pow x (-1+ y)))))

(pow 2 5)

(define (h n)
  (A 2 n))

