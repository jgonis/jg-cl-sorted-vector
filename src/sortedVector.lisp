(in-package :jg-cl-sorted-vector)

(defclass sorted-vector ()
  ((_vec :accessor get-vec 
         :initarg :initial-vec 
         :initform (jgvu:make-growable-vector 0))))

(defun make-sorted-vector (&optional initial-size)
  (let ((vec (if initial-size 
                 (jgvu:make-growable-vector initial-size)
                 (jgvu:make-growable-vector))))
    (make-instance 'sorted-vector :initial-vec vec)))

(defgeneric add-element (vec element))
(defmethod add-element ((vec sorted-vector) element))

(defgeneric set-element (vec element index))
(defmethod set-element ((vec sorted-vector) element (index integer)))

(defmethod remove-at ((vec sorted-vector) (index integer))
  vec)
(defmethod insert-at ((vec sorted-vector) (index integer) element)
  vec)


(defun lower-bound (vec element test) -1)
(defun upper-bound (vec element test) -1)
(defun equal-range (vec element test) (values -1 -1))
(defun binary_search (vec element test) -1)

