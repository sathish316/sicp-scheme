(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10); 1024

(A 2 4); 65536 ?

(A 3 3); 65536 ?

(define (f n)
  (A 0 n))

(define (fd n)
  (* 2 n))

(f 10)
(fd 10)

(define (g n)
  (A 1 n))

(define (gd n)
  (expt 2 n))

(g 5)
(gd 5)

(define (h n)
  (A 2 n))

(h 1)
(h 2)
(h 3)
(h 4)

(define (hd n)
  (if (= n 0)
      1
      (expt 2 (hd (- n 1)))))

(hd 1) ; 2
(hd 2) ; 2^2
(hd 3) ; 2^2^2
(hd 4) ; 2^2^2^2
