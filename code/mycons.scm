(define (mycons a b)
  (lambda (pick)
    (cond
     ((= pick 1) a)
     ((= pick 2) b))))

(define (mycar x)
  (x 1))

(define (mycdr x)
  (x 2))

(mycar (mycons 1 2))
(mycdr (mycons 1 2))