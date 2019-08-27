#SingleInstance
Sleep,3000
SetTimer,UseConsumable,1000
Return

UseConsumable:
Send,{Enter}
Sleep,200
Send,{Enter}
Sleep,200
Send,{Left}
Sleep,200
Send,{Enter}
Sleep,100
Return


Esc::ExitApp