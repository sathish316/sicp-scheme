(define (sum-int a b)
  (if (> a b)
      0
      (+ a (sum-int (1+ a) b))))

(sum-int 5 10)

(define (sum-squares a b)
  (if (> a b)
      0
      (+ (square a) (sum-squares (1+ a) b))))

(sum-squares 5 10)

(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1 (* a (+ a 2)))
         (pi-sum (+ a 4) b))))

(pi-sum 1 10)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term
              (next a)
              next
              b))))

(define (sum-int a b)
  (define (identity a) a)
  (sum identity
       a
       1+
       b))

(sum-int 5 10)

(define (sum-squares a b)
  (sum square
       a
       1+
       b))

(sum-squares 5 10)

(define (pi-sum a b)
  (sum (lambda (i) (/ 1 (* i (+ i 2))))
       a
       (lambda (i) (+ i 4))
       b))

(pi-sum 1 10)