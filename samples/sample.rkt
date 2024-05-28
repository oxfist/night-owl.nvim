#lang racket
; Racket script: foobar.rkt

; Defining variables
(define foo "Lorem Ipsum")
(define bar 123)

; Displaying variables
(displayln (string-append "Foo: " foo))
(displayln (string-append "Bar: " (number->string bar)))

; Using a list
(define baz (list 1 2 3 4 5))
(displayln baz)

; Using a hash table
(define qux (hash 'foo "bar" 'baz "qux"))
(for ([(k v) (in-hash qux)])
  (displayln (string-append "Key: " (symbol->string k) ", Value: " v)))

; Using control structures
(if (hash-has-key? qux 'foo)
    (displayln (string-append "Found foo: " (hash-ref qux 'foo)))
    (displayln "Did not find foo"))

; Using a switch-like statement
(cond
  [(= bar 123) (displayln "Bar is 123")]
  [else (displayln "Bar is not 123")])

; Using a loop
(for ([i baz])
  (displayln i))

; Using a function
(define (double x)
  (* 2 x))

(displayln (string-append "Double of Bar: " (number->string (double bar))))
