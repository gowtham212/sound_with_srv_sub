; Auto-generated. Do not edit!


(cl:in-package sound_package-srv)


;//! \htmlinclude SetVolume-request.msg.html

(cl:defclass <SetVolume-request> (roslisp-msg-protocol:ros-message)
  ((volume
    :reader volume
    :initarg :volume
    :type cl:integer
    :initform 0))
)

(cl:defclass SetVolume-request (<SetVolume-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVolume-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVolume-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<SetVolume-request> is deprecated: use sound_package-srv:SetVolume-request instead.")))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <SetVolume-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_package-srv:volume-val is deprecated.  Use sound_package-srv:volume instead.")
  (volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVolume-request>) ostream)
  "Serializes a message object of type '<SetVolume-request>"
  (cl:let* ((signed (cl:slot-value msg 'volume)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVolume-request>) istream)
  "Deserializes a message object of type '<SetVolume-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'volume) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVolume-request>)))
  "Returns string type for a service object of type '<SetVolume-request>"
  "sound_package/SetVolumeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVolume-request)))
  "Returns string type for a service object of type 'SetVolume-request"
  "sound_package/SetVolumeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVolume-request>)))
  "Returns md5sum for a message object of type '<SetVolume-request>"
  "3ea4fc3516d511dfc066b57616115ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVolume-request)))
  "Returns md5sum for a message object of type 'SetVolume-request"
  "3ea4fc3516d511dfc066b57616115ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVolume-request>)))
  "Returns full string definition for message of type '<SetVolume-request>"
  (cl:format cl:nil "# Request message format~%int32 volume  # Desired volume level (0-100)~%~%# Response message format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVolume-request)))
  "Returns full string definition for message of type 'SetVolume-request"
  (cl:format cl:nil "# Request message format~%int32 volume  # Desired volume level (0-100)~%~%# Response message format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVolume-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVolume-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVolume-request
    (cl:cons ':volume (volume msg))
))
;//! \htmlinclude SetVolume-response.msg.html

(cl:defclass <SetVolume-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetVolume-response (<SetVolume-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVolume-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVolume-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<SetVolume-response> is deprecated: use sound_package-srv:SetVolume-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetVolume-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_package-srv:success-val is deprecated.  Use sound_package-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVolume-response>) ostream)
  "Serializes a message object of type '<SetVolume-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVolume-response>) istream)
  "Deserializes a message object of type '<SetVolume-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVolume-response>)))
  "Returns string type for a service object of type '<SetVolume-response>"
  "sound_package/SetVolumeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVolume-response)))
  "Returns string type for a service object of type 'SetVolume-response"
  "sound_package/SetVolumeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVolume-response>)))
  "Returns md5sum for a message object of type '<SetVolume-response>"
  "3ea4fc3516d511dfc066b57616115ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVolume-response)))
  "Returns md5sum for a message object of type 'SetVolume-response"
  "3ea4fc3516d511dfc066b57616115ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVolume-response>)))
  "Returns full string definition for message of type '<SetVolume-response>"
  (cl:format cl:nil "bool success  # Indicates whether the volume was set successfully~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVolume-response)))
  "Returns full string definition for message of type 'SetVolume-response"
  (cl:format cl:nil "bool success  # Indicates whether the volume was set successfully~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVolume-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVolume-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVolume-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetVolume)))
  'SetVolume-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetVolume)))
  'SetVolume-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVolume)))
  "Returns string type for a service object of type '<SetVolume>"
  "sound_package/SetVolume")