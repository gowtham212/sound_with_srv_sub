; Auto-generated. Do not edit!


(cl:in-package sound_package-srv)


;//! \htmlinclude StopSong-request.msg.html

(cl:defclass <StopSong-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopSong-request (<StopSong-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopSong-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopSong-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<StopSong-request> is deprecated: use sound_package-srv:StopSong-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopSong-request>) ostream)
  "Serializes a message object of type '<StopSong-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopSong-request>) istream)
  "Deserializes a message object of type '<StopSong-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopSong-request>)))
  "Returns string type for a service object of type '<StopSong-request>"
  "sound_package/StopSongRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopSong-request)))
  "Returns string type for a service object of type 'StopSong-request"
  "sound_package/StopSongRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopSong-request>)))
  "Returns md5sum for a message object of type '<StopSong-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopSong-request)))
  "Returns md5sum for a message object of type 'StopSong-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopSong-request>)))
  "Returns full string definition for message of type '<StopSong-request>"
  (cl:format cl:nil "# StopSong.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopSong-request)))
  "Returns full string definition for message of type 'StopSong-request"
  (cl:format cl:nil "# StopSong.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopSong-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopSong-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopSong-request
))
;//! \htmlinclude StopSong-response.msg.html

(cl:defclass <StopSong-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopSong-response (<StopSong-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopSong-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopSong-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<StopSong-response> is deprecated: use sound_package-srv:StopSong-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopSong-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_package-srv:success-val is deprecated.  Use sound_package-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopSong-response>) ostream)
  "Serializes a message object of type '<StopSong-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopSong-response>) istream)
  "Deserializes a message object of type '<StopSong-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopSong-response>)))
  "Returns string type for a service object of type '<StopSong-response>"
  "sound_package/StopSongResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopSong-response)))
  "Returns string type for a service object of type 'StopSong-response"
  "sound_package/StopSongResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopSong-response>)))
  "Returns md5sum for a message object of type '<StopSong-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopSong-response)))
  "Returns md5sum for a message object of type 'StopSong-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopSong-response>)))
  "Returns full string definition for message of type '<StopSong-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopSong-response)))
  "Returns full string definition for message of type 'StopSong-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopSong-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopSong-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopSong-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopSong)))
  'StopSong-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopSong)))
  'StopSong-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopSong)))
  "Returns string type for a service object of type '<StopSong>"
  "sound_package/StopSong")