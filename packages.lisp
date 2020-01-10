(proclaim '(optimize (debug 3)))
(declaim (optimize (debug 3)))
(setf *read-default-float-format* 'double-float)

(defpackage :jg-cl-vector-utils
  (:nicknames :jgvu)
  (:use :cl)
  (:export :make-growable-vector
           :remove-at
           :insert-at))

(defpackage :jg-cl-sorted-vector
  (:nicknames :jgsv)
  (:use :cl
        :jgvu)
  (:export :sorted-vector
           :make-sorted-vector
           :add-element
           :set-element
           :lower-bound
           :upper-bound
           :equal-range
           :binary_search))
