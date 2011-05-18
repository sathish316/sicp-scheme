(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

(* 5 6)

(define (double x)
  (+ x x))
(double 5)

(define (halve x)
  (/ x 2))

(halve 10)
(halve 2)

(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (double (* a (halve b))))
        (else (+ a (* a (- b 1))))))

(* 1 0)
(* 1 1)
(* 1 2)

(* 2 0)
(* 2 1)
(* 2 2)

(* 5 6)