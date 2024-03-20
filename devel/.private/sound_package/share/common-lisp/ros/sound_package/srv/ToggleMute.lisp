; Auto-generated. Do not edit!


(cl:in-package sound_package-srv)


;//! \htmlinclude ToggleMute-request.msg.html

(cl:defclass <ToggleMute-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ToggleMute-request (<ToggleMute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleMute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleMute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<ToggleMute-request> is deprecated: use sound_package-srv:ToggleMute-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleMute-request>) ostream)
  "Serializes a message object of type '<ToggleMute-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleMute-request>) istream)
  "Deserializes a message object of type '<ToggleMute-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleMute-request>)))
  "Returns string type for a service object of type '<ToggleMute-request>"
  "sound_package/ToggleMuteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleMute-request)))
  "Returns string type for a service object of type 'ToggleMute-request"
  "sound_package/ToggleMuteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleMute-request>)))
  "Returns md5sum for a message object of type '<ToggleMute-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleMute-request)))
  "Returns md5sum for a message object of type 'ToggleMute-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleMute-request>)))
  "Returns full string definition for message of type '<ToggleMute-request>"
  (cl:format cl:nil "# No request message needed~%~%# Response message format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleMute-request)))
  "Returns full string definition for message of type 'ToggleMute-request"
  (cl:format cl:nil "# No request message needed~%~%# Response message format~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleMute-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleMute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleMute-request
))
;//! \htmlinclude ToggleMute-response.msg.html

(cl:defclass <ToggleMute-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ToggleMute-response (<ToggleMute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToggleMute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToggleMute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<ToggleMute-response> is deprecated: use sound_package-srv:ToggleMute-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ToggleMute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_package-srv:success-val is deprecated.  Use sound_package-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToggleMute-response>) ostream)
  "Serializes a message object of type '<ToggleMute-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToggleMute-response>) istream)
  "Deserializes a message object of type '<ToggleMute-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToggleMute-response>)))
  "Returns string type for a service object of type '<ToggleMute-response>"
  "sound_package/ToggleMuteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleMute-response)))
  "Returns string type for a service object of type 'ToggleMute-response"
  "sound_package/ToggleMuteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToggleMute-response>)))
  "Returns md5sum for a message object of type '<ToggleMute-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToggleMute-response)))
  "Returns md5sum for a message object of type 'ToggleMute-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToggleMute-response>)))
  "Returns full string definition for message of type '<ToggleMute-response>"
  (cl:format cl:nil "bool success  # Indicates whether the mute state was toggled successfully~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToggleMute-response)))
  "Returns full string definition for message of type 'ToggleMute-response"
  (cl:format cl:nil "bool success  # Indicates whether the mute state was toggled successfully~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToggleMute-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToggleMute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ToggleMute-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ToggleMute)))
  'ToggleMute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ToggleMute)))
  'ToggleMute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToggleMute)))
  "Returns string type for a service object of type '<ToggleMute>"
  "sound_package/ToggleMute")