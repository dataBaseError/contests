(define (huffpuff lst)
(if (not (eq? lst ()))
((lambda (x)
(display (cond ((zero? (modulo x 10)) 'huffpuff)
((zero? (modulo x 2)) 'huff)
((zero? (modulo x 5)) 'puff)
(else x)))
(display "; ")
(huffpuff (cdr lst))) (car lst)))) 
(define (make-list a b)
(if (>= b a)
(cons a (make-list (+ a 1) b))
()))
(fizzfuzz (make-list 1 50))
