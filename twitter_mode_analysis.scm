#lang racket
(require data-science-master)
(require plot)
(require math)



;;; Read in the data collected about a particular country from the .json file
;;;saved as rawiputdata


(define (remove-false str)
  (regexp-replace* #px"false" str " "))

(define (remove-true str)
  (regexp-replace* #px"true" str " "))

(define (remove-sensitive str)
  (regexp-replace* #px"sensitive" str " "))

(define (remove-favorited str)
  (regexp-replace* #px"favorited" str " "))

(define (remove-favorite str)
  (regexp-replace* #px"favorite" str " "))

;Reads all characters from in and returns them as a string.Reading from a file in this case we are reading from uganda_tweets1.json
(define input_tweets (port->string (open-input-file "tweeterdata_uganda_combined.json")))
