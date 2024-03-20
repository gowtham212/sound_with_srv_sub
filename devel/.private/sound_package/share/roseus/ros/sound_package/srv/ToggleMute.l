;; Auto-generated. Do not edit!


(when (boundp 'sound_package::ToggleMute)
  (if (not (find-package "SOUND_PACKAGE"))
    (make-package "SOUND_PACKAGE"))
  (shadow 'ToggleMute (find-package "SOUND_PACKAGE")))
(unless (find-package "SOUND_PACKAGE::TOGGLEMUTE")
  (make-package "SOUND_PACKAGE::TOGGLEMUTE"))
(unless (find-package "SOUND_PACKAGE::TOGGLEMUTEREQUEST")
  (make-package "SOUND_PACKAGE::TOGGLEMUTEREQUEST"))
(unless (find-package "SOUND_PACKAGE::TOGGLEMUTERESPONSE")
  (make-package "SOUND_PACKAGE::TOGGLEMUTERESPONSE"))

(in-package "ROS")





(defclass sound_package::ToggleMuteRequest
  :super ros::object
  :slots ())

(defmethod sound_package::ToggleMuteRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sound_package::ToggleMuteResponse
  :super ros::object
  :slots (_success ))

(defmethod sound_package::ToggleMuteResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sound_package::ToggleMute
  :super ros::object
  :slots ())

(setf (get sound_package::ToggleMute :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sound_package::ToggleMute :datatype-) "sound_package/ToggleMute")
(setf (get sound_package::ToggleMute :request) sound_package::ToggleMuteRequest)
(setf (get sound_package::ToggleMute :response) sound_package::ToggleMuteResponse)

(defmethod sound_package::ToggleMuteRequest
  (:response () (instance sound_package::ToggleMuteResponse :init)))

(setf (get sound_package::ToggleMuteRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sound_package::ToggleMuteRequest :datatype-) "sound_package/ToggleMuteRequest")
(setf (get sound_package::ToggleMuteRequest :definition-)
      "# No request message needed

# Response message format
---
bool success  # Indicates whether the mute state was toggled successfully

")

(setf (get sound_package::ToggleMuteResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sound_package::ToggleMuteResponse :datatype-) "sound_package/ToggleMuteResponse")
(setf (get sound_package::ToggleMuteResponse :definition-)
      "# No request message needed

# Response message format
---
bool success  # Indicates whether the mute state was toggled successfully

")



(provide :sound_package/ToggleMute "358e233cde0c8a8bcfea4ce193f8fc15")


