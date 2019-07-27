; Auto-generated. Do not edit!


(cl:in-package ros_threads-srv)


;//! \htmlinclude GiveTime-request.msg.html

(cl:defclass <GiveTime-request> (roslisp-msg-protocol:ros-message)
  ((Delay_s
    :reader Delay_s
    :initarg :Delay_s
    :type cl:integer
    :initform 0))
)

(cl:defclass GiveTime-request (<GiveTime-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GiveTime-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GiveTime-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_threads-srv:<GiveTime-request> is deprecated: use ros_threads-srv:GiveTime-request instead.")))

(cl:ensure-generic-function 'Delay_s-val :lambda-list '(m))
(cl:defmethod Delay_s-val ((m <GiveTime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_threads-srv:Delay_s-val is deprecated.  Use ros_threads-srv:Delay_s instead.")
  (Delay_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GiveTime-request>) ostream)
  "Serializes a message object of type '<GiveTime-request>"
  (cl:let* ((signed (cl:slot-value msg 'Delay_s)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GiveTime-request>) istream)
  "Deserializes a message object of type '<GiveTime-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Delay_s) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GiveTime-request>)))
  "Returns string type for a service object of type '<GiveTime-request>"
  "ros_threads/GiveTimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GiveTime-request)))
  "Returns string type for a service object of type 'GiveTime-request"
  "ros_threads/GiveTimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GiveTime-request>)))
  "Returns md5sum for a message object of type '<GiveTime-request>"
  "d2ce10c62679a0d54a33dc31ebd4da74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GiveTime-request)))
  "Returns md5sum for a message object of type 'GiveTime-request"
  "d2ce10c62679a0d54a33dc31ebd4da74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GiveTime-request>)))
  "Returns full string definition for message of type '<GiveTime-request>"
  (cl:format cl:nil "int64 Delay_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GiveTime-request)))
  "Returns full string definition for message of type 'GiveTime-request"
  (cl:format cl:nil "int64 Delay_s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GiveTime-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GiveTime-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GiveTime-request
    (cl:cons ':Delay_s (Delay_s msg))
))
;//! \htmlinclude GiveTime-response.msg.html

(cl:defclass <GiveTime-response> (roslisp-msg-protocol:ros-message)
  ((Time_str
    :reader Time_str
    :initarg :Time_str
    :type cl:string
    :initform ""))
)

(cl:defclass GiveTime-response (<GiveTime-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GiveTime-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GiveTime-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_threads-srv:<GiveTime-response> is deprecated: use ros_threads-srv:GiveTime-response instead.")))

(cl:ensure-generic-function 'Time_str-val :lambda-list '(m))
(cl:defmethod Time_str-val ((m <GiveTime-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_threads-srv:Time_str-val is deprecated.  Use ros_threads-srv:Time_str instead.")
  (Time_str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GiveTime-response>) ostream)
  "Serializes a message object of type '<GiveTime-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Time_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Time_str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GiveTime-response>) istream)
  "Deserializes a message object of type '<GiveTime-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Time_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Time_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GiveTime-response>)))
  "Returns string type for a service object of type '<GiveTime-response>"
  "ros_threads/GiveTimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GiveTime-response)))
  "Returns string type for a service object of type 'GiveTime-response"
  "ros_threads/GiveTimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GiveTime-response>)))
  "Returns md5sum for a message object of type '<GiveTime-response>"
  "d2ce10c62679a0d54a33dc31ebd4da74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GiveTime-response)))
  "Returns md5sum for a message object of type 'GiveTime-response"
  "d2ce10c62679a0d54a33dc31ebd4da74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GiveTime-response>)))
  "Returns full string definition for message of type '<GiveTime-response>"
  (cl:format cl:nil "string Time_str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GiveTime-response)))
  "Returns full string definition for message of type 'GiveTime-response"
  (cl:format cl:nil "string Time_str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GiveTime-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Time_str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GiveTime-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GiveTime-response
    (cl:cons ':Time_str (Time_str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GiveTime)))
  'GiveTime-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GiveTime)))
  'GiveTime-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GiveTime)))
  "Returns string type for a service object of type '<GiveTime>"
  "ros_threads/GiveTime")