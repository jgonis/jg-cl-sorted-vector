(in-package :jg-cl-sorted-vector.tests)

(test create-sorted-vector
  (let ((vec (jgsv:make-sorted-vector)))
    (is (= 1 1))))
