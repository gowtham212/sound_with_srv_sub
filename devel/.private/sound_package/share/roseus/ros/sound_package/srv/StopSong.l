;; Auto-generated. Do not edit!


(when (boundp 'sound_package::StopSong)
  (if (not (find-package "SOUND_PACKAGE"))
    (make-package "SOUND_PACKAGE"))
  (shadow 'StopSong (find-package "SOUND_PACKAGE")))
(unless (find-package "SOUND_PACKAGE::STOPSONG")
  (make-package "SOUND_PACKAGE::STOPSONG"))
(unless (find-package "SOUND_PACKAGE::STOPSONGREQUEST")
  (make-package "SOUND_PACKAGE::STOPSONGREQUEST"))
(unless (find-package "SOUND_PACKAGE::STOPSONGRESPONSE")
  (make-package "SOUND_PACKAGE::STOPSONGRESPONSE"))

(in-package "ROS")





(defclass sound_package::StopSongRequest
  :super ros::object
  :slots ())

(defmethod sound_package::StopSongRequest
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

(defclass sound_package::StopSongResponse
  :super ros::object
  :slots (_success ))

(defmethod sound_package::StopSongResponse
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

(defclass sound_package::StopSong
  :super ros::object
  :slots ())

(setf (get sound_package::StopSong :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sound_package::StopSong :datatype-) "sound_package/StopSong")
(setf (get sound_package::StopSong :request) sound_package::StopSongRequest)
(setf (get sound_package::StopSong :response) sound_package::StopSongResponse)

(defmethod sound_package::StopSongRequest
  (:response () (instance sound_package::StopSongResponse :init)))

(setf (get sound_package::StopSongRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sound_package::StopSongRequest :datatype-) "sound_package/StopSongRequest")
(setf (get sound_package::StopSongRequest :definition-)
      "# StopSong.srv
---
bool success

")

(setf (get sound_package::StopSongResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sound_package::StopSongResponse :datatype-) "sound_package/StopSongResponse")
(setf (get sound_package::StopSongResponse :definition-)
      "# StopSong.srv
---
bool success

")



(provide :sound_package/StopSong "358e233cde0c8a8bcfea4ce193f8fc15")


