(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 5 10)
((if (> 10 0) + -) 5 10)
(+ 5 10)
15

(a-plus-abs-b 5 -5)
((if (> -5 0) + -) 5 -5)
(- 5 -5)
10