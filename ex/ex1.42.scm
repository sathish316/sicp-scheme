(define (compose f g)
  (lambda (x)
    (f (g x))))

(define inc
  (lambda (x)
    (+ 1 x)))

(define square
  (lambda (x)
    (* x x)))
                
((compose square inc) 6)