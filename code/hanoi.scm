(define (move n from to spare)
  (cond ((= n 0) "DONE")
        (else
         (move (-1+ n) from spare to)
         (print-move from to) 
         (move (-1+ n) spare to from))))

(define (print-move from to)
  (display "move disk ")
  (display from)
  (display " to ")
  (display to)
  (newline))

(mov e 3 1 3 2)