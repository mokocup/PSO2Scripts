#SingleInstance
#NoEnv
OnOff:=0
UniqueWin := "ahk_exe pso2.exe"
Return

checkSend(key){
    IfWinNotExist %UniqueWin%
    {
       MsgBox,Pso2 Instance Not Found!
       ExitApp
    }
        ControlSend, ,{ %key% },%UniqueWin%
}

FunScratch:
    checkSend("Enter")
return

q::
OnOff:=!OnOff
SetTimer,FunScratch,% OnOff == 1 ? 200 : "Off"
return
Esc::ExitApp