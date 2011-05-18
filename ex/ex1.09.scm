(define (inc x) (+ x 1))

(define (dec x) (- x 1))

(define (add a b)
  (if (= a 0)
      b
      (inc (add (dec a) b))))

(inc 4)
(dec 4)
(add 0 5)

(add 4 5)
(inc (add 3 5))
(inc (inc (add 2 5)))
(inc (inc (inc (add 1 5))))
(inc (inc (inc (inc (add 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

                                        ; Time = O(n)
                                        ; Space = O(n)
                                        ; Linear recursion

(define (add a b)
  (if (= a 0)
      b
      (add (dec a) (inc b))))

(add 0 5)

(add 4 5)
(add 3 6)
(add 2 7)
(add 1 8)
(add 0 9)
9
                                        ; Time = O(n)
                                        ; Space = O(1)
                                        ; Iteration

