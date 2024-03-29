(defun decompress(elements)
    (if (not (eq elements nil))
        (if (= (list-length (car elements)) 2)
            (append (listof (car(car elements)) (nth 1 (car elements))) (decompress (cdr elements)))
            (append (car elements) (decompress (cdr elements)))
        )
    )
)

(defun listof(counter element)
    (if (> counter 0)
        (cons element (listof(- counter 1) element))
    )
)

(decompress (list (list 4 1) (list 0) (list 1) (list 6 0) (list 2 1)))
