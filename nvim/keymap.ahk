classname = ""
keystate = ""

*CapsLock::
 WinGetClass, classname, A
 if (classname = "Qt5QWindowIcon")
   send,{ESC down}
 else
   GetKeyState, keystate, CapsLock, T
 if (keystate = "D")
   SetCapsLockState, Off
 else
   SetCapsLockState, On
 return

*CapsLock up::
 WinGetClass, classname, A
 if (classname = "Qt5QWindowIcon")
   send,{ESC up}
 return