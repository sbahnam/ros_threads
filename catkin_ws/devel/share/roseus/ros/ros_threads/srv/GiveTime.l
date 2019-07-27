;; Auto-generated. Do not edit!


(when (boundp 'ros_threads::GiveTime)
  (if (not (find-package "ROS_THREADS"))
    (make-package "ROS_THREADS"))
  (shadow 'GiveTime (find-package "ROS_THREADS")))
(unless (find-package "ROS_THREADS::GIVETIME")
  (make-package "ROS_THREADS::GIVETIME"))
(unless (find-package "ROS_THREADS::GIVETIMEREQUEST")
  (make-package "ROS_THREADS::GIVETIMEREQUEST"))
(unless (find-package "ROS_THREADS::GIVETIMERESPONSE")
  (make-package "ROS_THREADS::GIVETIMERESPONSE"))

(in-package "ROS")





(defclass ros_threads::GiveTimeRequest
  :super ros::object
  :slots (_Delay_s ))

(defmethod ros_threads::GiveTimeRequest
  (:init
   (&key
    ((:Delay_s __Delay_s) 0)
    )
   (send-super :init)
   (setq _Delay_s (round __Delay_s))
   self)
  (:Delay_s
   (&optional __Delay_s)
   (if __Delay_s (setq _Delay_s __Delay_s)) _Delay_s)
  (:serialization-length
   ()
   (+
    ;; int64 _Delay_s
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Delay_s
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Delay_s (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Delay_s) (= (length (_Delay_s . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Delay_s . bv) 0) 0) s)
              (write-long (ash (elt (_Delay_s . bv) 1) -1) s))
             ((and (class _Delay_s) (= (length (_Delay_s . bv)) 1)) ;; big1
              (write-long (elt (_Delay_s . bv) 0) s)
              (write-long (if (>= _Delay_s 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Delay_s s)(write-long (if (>= _Delay_s 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Delay_s
#+(or :alpha :irix6 :x86_64)
      (setf _Delay_s (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Delay_s (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass ros_threads::GiveTimeResponse
  :super ros::object
  :slots (_Time_str ))

(defmethod ros_threads::GiveTimeResponse
  (:init
   (&key
    ((:Time_str __Time_str) "")
    )
   (send-super :init)
   (setq _Time_str (string __Time_str))
   self)
  (:Time_str
   (&optional __Time_str)
   (if __Time_str (setq _Time_str __Time_str)) _Time_str)
  (:serialization-length
   ()
   (+
    ;; string _Time_str
    4 (length _Time_str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Time_str
       (write-long (length _Time_str) s) (princ _Time_str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Time_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Time_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_threads::GiveTime
  :super ros::object
  :slots ())

(setf (get ros_threads::GiveTime :md5sum-) "d2ce10c62679a0d54a33dc31ebd4da74")
(setf (get ros_threads::GiveTime :datatype-) "ros_threads/GiveTime")
(setf (get ros_threads::GiveTime :request) ros_threads::GiveTimeRequest)
(setf (get ros_threads::GiveTime :response) ros_threads::GiveTimeResponse)

(defmethod ros_threads::GiveTimeRequest
  (:response () (instance ros_threads::GiveTimeResponse :init)))

(setf (get ros_threads::GiveTimeRequest :md5sum-) "d2ce10c62679a0d54a33dc31ebd4da74")
(setf (get ros_threads::GiveTimeRequest :datatype-) "ros_threads/GiveTimeRequest")
(setf (get ros_threads::GiveTimeRequest :definition-)
      "int64 Delay_s
---
string Time_str

")

(setf (get ros_threads::GiveTimeResponse :md5sum-) "d2ce10c62679a0d54a33dc31ebd4da74")
(setf (get ros_threads::GiveTimeResponse :datatype-) "ros_threads/GiveTimeResponse")
(setf (get ros_threads::GiveTimeResponse :definition-)
      "int64 Delay_s
---
string Time_str

")



(provide :ros_threads/GiveTime "d2ce10c62679a0d54a33dc31ebd4da74")


