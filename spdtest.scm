(define pi 3.14159265358979323846264338327950288)

(define (int in)
 (inexact->exact (truncate in))
)

(define (fn_s in)
 (define i (- in (int in)))
 (define r (* (- 0.5 (abs (- i 0.5))) 0.7))
 (+ (* (* i i 2) (- 1 r)) (* i r))
)

(define (fns in)
 (define out 0)
 (set! in (abs in))
 (set! in
  (if (= 1 (logand (int in) 1) )
   (- 1 (- in (int in)))
   (- in (int in))
  )
 )
 (set! out (if (< in 0.5) (fn_s in) (- 1 (fn_s (- 1 in)))))
 (+ -1 (* out 2))
)

(define (fnsin in)
 (set! in (+ in (* pi 0.5)))
 (fns (/ in pi))
)

(define i 0)
(define s 0)

(do ()
    ((>= i 2010000))
 (set! s (+ s (fnsin i)))
 (set! i (+ i 1))
)

(display s) (newline)
