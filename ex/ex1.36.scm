(define (fixed-point f initial-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try count guess)
    (display count)
    (display " - ")
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try (+ count 1) next))))
  (try 1 initial-guess))

                                        ; x^x = log 1000
                                        ; Fixed point of y = f(x) = log 1000 / log x = x

(fixed-point (lambda (x)
               (/ (log 1000)
                  (log x)))
             2.0) ; Without average damping : 34 steps

                                        ; With average damping
                                        ; Fixed point of y = f(x) = 1/2 (x + log 1000/log x) = x

(define (average x y)
  (* 0.5 (+ x y)))

(fixed-point (lambda (x)
               (average x
                        (/ (log 1000)
                           (log x)))) 2.0) ; With average damping: 9 steps