(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term
              (next a)
              next
              b))))

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* k h))))
  (define (simpson-term k)
      (cond ((or (= k 0) (= k n)) (y k))
            ((even? k) (* 2 (y k)))
            (else (* 4 (y k)))))
  (* (/ h 3.0) (sum simpson-term 0 inc n)))

(simpson-integral cube 0 1 10)
(simpson-integral cube 0 1 100)
(simpson-integral cube 0 1 1000)

(define (average a b)
  (/ (+ a b) 2.0))

(define (simpson-approx f a b)
  (define h (/ (- b a) 6.0))
  (* h
     (+ (f a)
        (* 4 (f (average a b)))
        (f b))))

(simpson-approx cube 0 1)

  

  