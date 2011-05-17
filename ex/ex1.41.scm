(define (double proc)
  (lambda (x)
    (proc (proc x))))

(define (inc x)
  (+ x 1))

(define inc2 (double inc))
(inc2 4)
                                        ; (double inc)
                                        ; {|x| (inc (inc x))}
                                        ; (inc (inc 4))
                                        ; (inc 5)
                                        ; 6

(define inc4 (double (double inc)))
(inc4 4)
                                        ; (double (double inc))
                                        ; (double {|x| (inc (inc x))})
                                        ; (double inc2)
                                        ; {|x| (inc2 (inc2 x))}
                                        ; (inc2 (inc2 4))
                                        ; (inc2 6)
                                        ; 8


(define inc4 ((double double) inc))
(inc4 4)
                                        ; ({|p| (double (double p))} inc)
                                        ; (double (double inc))
                                        ; (double {|x| (inc (inc x))})
                                        ; {|x| (L (L x))}
                                        ; (L (L 4)
                                        ; (L 6)
                                        ; 8

(define inc16 ((double (double double)) inc))
(inc16 4)
                                        ; ((double {|p| (double (double p)}) inc)
                                        ;({|p| (L (L p))} inc)
                                        ; (L (L inc))
                                        ; (L (double (double inc)))
                                        ; (double (double (double (double inc))))

(((double (double double)) inc) 5) ; (inc16 5) => 21

