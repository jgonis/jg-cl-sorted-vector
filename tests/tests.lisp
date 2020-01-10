(in-package :jg-cl-sorted-vector.tests)
(defun run-tests ()
  (1am:run))

(test remove-from-vec
  (let ((vec (jgvu:make-growable-vector)))
    (is (= 1 1))))
