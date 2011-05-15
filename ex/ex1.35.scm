                                        ; Golden ratio phi is a number such that phi^2 - phi - 1 = 0
                                        ; phi^2 = phi + 1

                                        ; Its a fixed point of y = f(phi) = 1 + 1/phi = phi

(define (fixed-point f)
  (define tolerance 0.000001)
  (define (close-enough? u v)
    (< (abs (- u v)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try 1.0))

(fixed-point (lambda (phi)
               (+ 1
                  (/ 1 phi))))