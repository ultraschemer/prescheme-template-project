(define (main argc argv)
  (if (= argc 2)
    (let ((out (current-output-port)))
      (write-string "Hello, world, " out)
      (write-string (vector-ref argv 1) out)
      (write-char #\! out)
      (newline out)
      0)
    (let ((out (current-error-port)))
      (write-string "Usage: " out)
      (write-string (vector-ref argv 0) out)
      (write-string " <user>" out)
      (newline out)
      (write-string " Greets the world & <user>." out)
      (newline out)
      -1)))
