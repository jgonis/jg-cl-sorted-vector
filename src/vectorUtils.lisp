(in-package :jg-cl-vector-utils)

(defun make-growable-vector (&optional initial-size)
  (if initial-size
      (make-array initial-size :fill-pointer 0 :adjustable t)
      (make-array 0 :fill-pointer 0 :adjustable t)))

(defgeneric remove-at (vec index))
(defmethod remove-at ((vec array) (index integer))  )

(defgeneric insert-at (vec index element))
(defmethod insert-at ((vec array) (index integer) element)
  (vector-push-extend '() vec)
  (replace vec vec :start1 (1+ index) :start2 index :end2 (1- (length vec)))
  (setf (elt vec index) element)
  vec)

