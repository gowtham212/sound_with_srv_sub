;; Auto-generated. Do not edit!


(when (boundp 'sound_package::SetVolume)
  (if (not (find-package "SOUND_PACKAGE"))
    (make-package "SOUND_PACKAGE"))
  (shadow 'SetVolume (find-package "SOUND_PACKAGE")))
(unless (find-package "SOUND_PACKAGE::SETVOLUME")
  (make-package "SOUND_PACKAGE::SETVOLUME"))
(unless (find-package "SOUND_PACKAGE::SETVOLUMEREQUEST")
  (make-package "SOUND_PACKAGE::SETVOLUMEREQUEST"))
(unless (find-package "SOUND_PACKAGE::SETVOLUMERESPONSE")
  (make-package "SOUND_PACKAGE::SETVOLUMERESPONSE"))

(in-package "ROS")





(defclass sound_package::SetVolumeRequest
  :super ros::object
  :slots (_volume ))

(defmethod sound_package::SetVolumeRequest
  (:init
   (&key
    ((:volume __volume) 0)
    )
   (send-super :init)
   (setq _volume (round __volume))
   self)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:serialization-length
   ()
   (+
    ;; int32 _volume
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _volume
       (write-long _volume s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _volume
     (setq _volume (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sound_package::SetVolumeResponse
  :super ros::object
  :slots (_success ))

(defmethod sound_package::SetVolumeResponse
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

(defclass sound_package::SetVolume
  :super ros::object
  :slots ())

(setf (get sound_package::SetVolume :md5sum-) "3ea4fc3516d511dfc066b57616115ae9")
(setf (get sound_package::SetVolume :datatype-) "sound_package/SetVolume")
(setf (get sound_package::SetVolume :request) sound_package::SetVolumeRequest)
(setf (get sound_package::SetVolume :response) sound_package::SetVolumeResponse)

(defmethod sound_package::SetVolumeRequest
  (:response () (instance sound_package::SetVolumeResponse :init)))

(setf (get sound_package::SetVolumeRequest :md5sum-) "3ea4fc3516d511dfc066b57616115ae9")
(setf (get sound_package::SetVolumeRequest :datatype-) "sound_package/SetVolumeRequest")
(setf (get sound_package::SetVolumeRequest :definition-)
      "# Request message format
int32 volume  # Desired volume level (0-100)

# Response message format
---
bool success  # Indicates whether the volume was set successfully

")

(setf (get sound_package::SetVolumeResponse :md5sum-) "3ea4fc3516d511dfc066b57616115ae9")
(setf (get sound_package::SetVolumeResponse :datatype-) "sound_package/SetVolumeResponse")
(setf (get sound_package::SetVolumeResponse :definition-)
      "# Request message format
int32 volume  # Desired volume level (0-100)

# Response message format
---
bool success  # Indicates whether the volume was set successfully

")



(provide :sound_package/SetVolume "3ea4fc3516d511dfc066b57616115ae9")


