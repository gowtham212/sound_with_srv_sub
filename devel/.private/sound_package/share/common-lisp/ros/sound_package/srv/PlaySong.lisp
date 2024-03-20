; Auto-generated. Do not edit!


(cl:in-package sound_package-srv)


;//! \htmlinclude PlaySong-request.msg.html

(cl:defclass <PlaySong-request> (roslisp-msg-protocol:ros-message)
  ((song_name
    :reader song_name
    :initarg :song_name
    :type cl:string
    :initform ""))
)

(cl:defclass PlaySong-request (<PlaySong-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySong-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySong-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<PlaySong-request> is deprecated: use sound_package-srv:PlaySong-request instead.")))

(cl:ensure-generic-function 'song_name-val :lambda-list '(m))
(cl:defmethod song_name-val ((m <PlaySong-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_package-srv:song_name-val is deprecated.  Use sound_package-srv:song_name instead.")
  (song_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySong-request>) ostream)
  "Serializes a message object of type '<PlaySong-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'song_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'song_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySong-request>) istream)
  "Deserializes a message object of type '<PlaySong-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'song_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'song_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySong-request>)))
  "Returns string type for a service object of type '<PlaySong-request>"
  "sound_package/PlaySongRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySong-request)))
  "Returns string type for a service object of type 'PlaySong-request"
  "sound_package/PlaySongRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySong-request>)))
  "Returns md5sum for a message object of type '<PlaySong-request>"
  "80c5c0485165c4384c0ff23ac3873126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySong-request)))
  "Returns md5sum for a message object of type 'PlaySong-request"
  "80c5c0485165c4384c0ff23ac3873126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySong-request>)))
  "Returns full string definition for message of type '<PlaySong-request>"
  (cl:format cl:nil "# PlaySong.srv~%string song_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySong-request)))
  "Returns full string definition for message of type 'PlaySong-request"
  (cl:format cl:nil "# PlaySong.srv~%string song_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySong-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'song_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySong-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySong-request
    (cl:cons ':song_name (song_name msg))
))
;//! \htmlinclude PlaySong-response.msg.html

(cl:defclass <PlaySong-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlaySong-response (<PlaySong-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySong-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySong-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_package-srv:<PlaySong-response> is deprecated: use sound_package-srv:PlaySong-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlaySong-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_package-srv:success-val is deprecated.  Use sound_package-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySong-response>) ostream)
  "Serializes a message object of type '<PlaySong-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySong-response>) istream)
  "Deserializes a message object of type '<PlaySong-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySong-response>)))
  "Returns string type for a service object of type '<PlaySong-response>"
  "sound_package/PlaySongResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySong-response)))
  "Returns string type for a service object of type 'PlaySong-response"
  "sound_package/PlaySongResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySong-response>)))
  "Returns md5sum for a message object of type '<PlaySong-response>"
  "80c5c0485165c4384c0ff23ac3873126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySong-response)))
  "Returns md5sum for a message object of type 'PlaySong-response"
  "80c5c0485165c4384c0ff23ac3873126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySong-response>)))
  "Returns full string definition for message of type '<PlaySong-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySong-response)))
  "Returns full string definition for message of type 'PlaySong-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySong-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySong-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySong-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlaySong)))
  'PlaySong-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlaySong)))
  'PlaySong-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySong)))
  "Returns string type for a service object of type '<PlaySong>"
  "sound_package/PlaySong")