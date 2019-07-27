
(cl:in-package :asdf)

(defsystem "ros_threads-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GiveTime" :depends-on ("_package_GiveTime"))
    (:file "_package_GiveTime" :depends-on ("_package"))
  ))