(in-package :jg-cl-sorted-vector.tests)

(test remove-from-vec
  (let ((vec (jgvu:make-growable-vector)))
    (is (= 1 1))))
