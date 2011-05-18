(define (pascal-rows n)
  (define (pascal-rows-iter i)
    (if (= i n)
        '()
        (cons (pascal-row i)
              (pascal-rows-iter (+ i 1)))))
  (pascal-rows-iter 0))

(pascal-rows 5)

(define (pascal-row i)
  (define (pascal-row-iter col)
    (if (> col i)
        '()
        (cons (pascal-element i col)
              (pascal-row-iter (+ col 1)))))
  (pascal-row-iter 0))

(pascal-row 4)

(define (pascal-element row col)
  (cond ((= col 0) 1)
        ((= row col) 1)
        (else
         (+ (pascal-element (- row 1) (- col 1))
            (pascal-element (- row 1) col)))))

(pascal-element 4 2)
                                        ; 1
                                        ; 1 1
                                        ; 1 2 1
                                        ; 1 3 3 1
                                        ; 1 4 6 4 1




