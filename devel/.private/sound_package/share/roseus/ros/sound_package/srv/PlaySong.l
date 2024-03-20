;; Auto-generated. Do not edit!


(when (boundp 'sound_package::PlaySong)
  (if (not (find-package "SOUND_PACKAGE"))
    (make-package "SOUND_PACKAGE"))
  (shadow 'PlaySong (find-package "SOUND_PACKAGE")))
(unless (find-package "SOUND_PACKAGE::PLAYSONG")
  (make-package "SOUND_PACKAGE::PLAYSONG"))
(unless (find-package "SOUND_PACKAGE::PLAYSONGREQUEST")
  (make-package "SOUND_PACKAGE::PLAYSONGREQUEST"))
(unless (find-package "SOUND_PACKAGE::PLAYSONGRESPONSE")
  (make-package "SOUND_PACKAGE::PLAYSONGRESPONSE"))

(in-package "ROS")





(defclass sound_package::PlaySongRequest
  :super ros::object
  :slots (_song_name ))

(defmethod sound_package::PlaySongRequest
  (:init
   (&key
    ((:song_name __song_name) "")
    )
   (send-super :init)
   (setq _song_name (string __song_name))
   self)
  (:song_name
   (&optional __song_name)
   (if __song_name (setq _song_name __song_name)) _song_name)
  (:serialization-length
   ()
   (+
    ;; string _song_name
    4 (length _song_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _song_name
       (write-long (length _song_name) s) (princ _song_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _song_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _song_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sound_package::PlaySongResponse
  :super ros::object
  :slots (_success ))

(defmethod sound_package::PlaySongResponse
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

(defclass sound_package::PlaySong
  :super ros::object
  :slots ())

(setf (get sound_package::PlaySong :md5sum-) "80c5c0485165c4384c0ff23ac3873126")
(setf (get sound_package::PlaySong :datatype-) "sound_package/PlaySong")
(setf (get sound_package::PlaySong :request) sound_package::PlaySongRequest)
(setf (get sound_package::PlaySong :response) sound_package::PlaySongResponse)

(defmethod sound_package::PlaySongRequest
  (:response () (instance sound_package::PlaySongResponse :init)))

(setf (get sound_package::PlaySongRequest :md5sum-) "80c5c0485165c4384c0ff23ac3873126")
(setf (get sound_package::PlaySongRequest :datatype-) "sound_package/PlaySongRequest")
(setf (get sound_package::PlaySongRequest :definition-)
      "# PlaySong.srv
string song_name
---
bool success

")

(setf (get sound_package::PlaySongResponse :md5sum-) "80c5c0485165c4384c0ff23ac3873126")
(setf (get sound_package::PlaySongResponse :datatype-) "sound_package/PlaySongResponse")
(setf (get sound_package::PlaySongResponse :definition-)
      "# PlaySong.srv
string song_name
---
bool success

")



(provide :sound_package/PlaySong "80c5c0485165c4384c0ff23ac3873126")


