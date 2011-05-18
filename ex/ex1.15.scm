(define (p x)
  (display "sin ")
  (display x)
  (newline)
  (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (< (abs angle) 0.1)
      angle
      (p (sine (/ angle 3.0)))))

(define (cube x) (* x x x))

(sine (/ 3.14 2))

(sine 12.5) ; 5 times

