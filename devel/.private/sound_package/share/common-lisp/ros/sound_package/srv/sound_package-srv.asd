
(cl:in-package :asdf)

(defsystem "sound_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PlaySong" :depends-on ("_package_PlaySong"))
    (:file "_package_PlaySong" :depends-on ("_package"))
    (:file "SetVolume" :depends-on ("_package_SetVolume"))
    (:file "_package_SetVolume" :depends-on ("_package"))
    (:file "StopSong" :depends-on ("_package_StopSong"))
    (:file "_package_StopSong" :depends-on ("_package"))
    (:file "ToggleMute" :depends-on ("_package_ToggleMute"))
    (:file "_package_ToggleMute" :depends-on ("_package"))
  ))