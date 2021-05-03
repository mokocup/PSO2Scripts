#SingleInstance, Force
#NoEnv
global OnOff:=0
global UniqueWin := "ahk_exe pso2.exe"
global loopTime := 200
global loadDelay := 2000
global loadInput := 2

MsgBox , 64, Ex-Cube AHK Script by Cup & Verve, RUN AS ADMINISTRATOR!`n`nProceed to the "EX-Cube Exchange Shop". `n `nPress Q to Start / Stop Script `nESC to Exit Script `n `nSending to Material Storage. `n`nThe home of this script is https://github.com/mokocup/PSO2Scripts`n`nBy Cup#4575 & Verve#6947`n`nUse at your own risk!
if ErrorLevel
ExitApp
SetTimer, ChangeButtonNames, 50
MsgBox , 4, Customize or Default, Use default timing?
IfMsgBox, YES 
	InputBox, loadInput , Shop Loading Delay, Time to wait for Ex-Cube Shop to appear (in seconds): , , 200, 160, , , Locale, , 2
if ErrorLevel
ExitApp
else 
loadDelay := loadInput*1000
MsgBox, 64, Delay, Delay set to %loadInput%s.
if ErrorLevel
ExitApp
else
return

ChangeButtonNames: 
IfWinNotExist, Customize or Default
	return  ; Keep waiting.
SetTimer, ChangeButtonNames, Off 
WinActivate 
ControlSetText, Button1, &Custom... 
ControlSetText, Button2, &Default 
return

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
    Sleep, %loadDelay%
    checkSend("Left")
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
