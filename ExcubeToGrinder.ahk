#SingleInstance, Force
#NoEnv
global OnOff:=0
global UniqueWin := "ahk_exe pso2.exe"
global loopTime := 200
MsgBox , Press Q to Start / Stop Script `nESC to Exit Script
Return

checkSend(key){
IfWinExist, %UniqueWin%
    {
        ControlSend, ,{ %key% },%UniqueWin%
    }else
    {
       MsgBox,Pso2 Instance Not Found!
       ExitApp
    }
}

ExcubeToGrinder:
    checkSend("Enter")
    Sleep,500
    checkSend("Left")
    Sleep,200
    checkSend("Up")
    Sleep,200
    checkSend("Up")
    Sleep,200
    checkSend("Enter")
    Sleep,200
    checkSend("Enter")
    Sleep,300
    checkSend("Enter")
    Sleep,500
    checkSend("Esc")
    Sleep,200
    checkSend("Up")
    Sleep,200
    checkSend("Up")
    Sleep,200
    checkSend("Enter")
    Sleep,200
    checkSend("Down")
    Sleep,200
    checkSend("Down")
    Sleep,200
    checkSend("Enter")
    Sleep,200
    checkSend("Left")
    Sleep,200
    checkSend("Enter")
    Sleep,200
    checkSend("Esc")
    Sleep,200
    checkSend("Down")
    Sleep,200
    checkSend("Down")
    Sleep,200
return

q::
OnOff:=!OnOff
SetTimer,ExcubeToGrinder,% OnOff == 1 ? %loopTime% : "Off"
return
Esc::ExitApp