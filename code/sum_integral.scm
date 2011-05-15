(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ 1 a) b))))

(sum-integers 1 10)

(define (cube x)
  (* x x x))

(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a) (sum-cubes (+ 1 a) b))))

(sum-cubes 1 10)

(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2)))
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

(define (inc n) (+ n 1))

(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(sum-integers 1 10)

(define (sum-cubes a b)
  (sum cube a inc b))

(sum-cubes 1 10)

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

(define (pi-sum a b)
  (sum (lambda (i) (/ 1.0 (* i (+ i 2))))
       a
       (lambda (i) (+ i 4))
       b))

(pi-sum 1 10)

(* 8 (pi-sum 1 1000))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))

(define (integral f a b dx)
  (* (sum f
          (+ a (/ dx 2.0))
          (lambda (i) (+ i dx))
          b)
     dx))

(integral cube 0 1 0.01)