(defun analyze-file (file-path)
  "Analyze the text file at FILE-PATH, returning a hash table of word frequencies."
  (let ((table (make-hash-table :test 'equal)))
    (with-open-file (stream file-path)
      (loop for line = (read-line stream nil)
            while line do
              (dolist (word (remove-if (lambda (x) (string= x "")) 
                                       (split-sequence #\Space line)))
                (incf (gethash (string-downcase word) table 0)))))
    table))

(defun print-frequency-table (table)
  "Prints the frequency table from a hash-table result from `analyze-file`."
  (maphash (lambda (word freq) 
             (format t "~A: ~A~%" word freq))
           table))
