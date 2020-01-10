(defsystem :jg-cl-sorted-vector
  :description "Sorted vector class and support vector functions as well"
  :version "0.0.1"
  :author "Jeff Gonis <jeffgonis@fastmail.com>"
  :licence "MIT"
  :components ((:file "packages")
               (:module "src" 
                        :serial t 
                        :components ((:file "vectorUtils") 
                                     (:file "sortedVector")))))

(defsystem :jg-cl-sorted-vector/tests
  :description "Test suite for the vector utils and sorted vec"
  :license "MIT"
  :author "Jeff Gonis"
  :depends-on (:jg-cl-sorted-vector 
               :1am
               :cl-utilities)
  :serial t
  :components ((:file "packages.test")
               (:module "tests"
                :serial t
                :components ((:file "tests")
                             (:file "utilTests")
                             (:file "sortedVectorTests"))))
  :perform (asdf:test-op (op system)
             (funcall (read-from-string "jg-cl-sorted-vector.tests:run-tests"))))
