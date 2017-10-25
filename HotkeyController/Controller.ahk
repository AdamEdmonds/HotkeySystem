;Author - Adam Edmonds
;Email - adam.edmonds@gmail.com


;Hotkey Legend
;# = Win Key
;^ = Ctrl Key
;+ = Shift Key
;! = Alt Key
;HotKey Symbol Chart - https://autohotkey.com/docs/Hotkeys.htm#Symbols


SetTitleMatchMode, 2  ;Set search mode to Contains

#IfWinActive ; Default Hotkey Handlers
{
;------------------------------------ Key 1 -------------------------------------------------
    #F10:: ;F1 cannot be used as it is controlled by Windows
        prog1(){
            Send {Volume_Mute}
        }
;------------------------------------ Key 2 -------------------------------------------------
    #F2:: ;Win + F2
        prog2(){
            Send #d ;Show Desktop
        }
    +#F2::
        progShiftWinF2(){
            Run chrome.exe ;Open Chrome
        }   
    !#F2::
        progAltWinF2(){  
            Run, %windir%\explorer.exe shell:Appsfolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge
        }
;------------------------------------ Key 3 -------------------------------------------------
    #F3:: 
        prog3(){
            Run, calc
        }
;------------------------------------ Key 4 -------------------------------------------------
    #F4:: 
        prog4(){
            While GetKeyState("F4","P")
            {
                Send {Volume_Up}
                Sleep, 1 ; every 10 miliseconds
            }
        }
    +#F4::
        prog_ShiftWinF4(){
            Send ^#{Right}
        }
;------------------------------------ Key 5 -------------------------------------------------
    #F5:: 
        ;prog5(){
        ;    EnvGet, SystemRoot, SystemRoot
        ;    Run powershell.exe -ExecutionPolicy unrestricted "Start-Process Powershell -verb runAs C:\Users\aedmonds\Source\Repos\AutoHotKey\HotkeyController\Powershell\scripts.ps1"
        ;}
;------------------------------------ Key 6 -------------------------------------------------
    #F6:: 
        prog6(){
            Run, powershell.exe
        }
    +#F6::
        prog_ShiftWinF6(){
            Run, explorer.exe
        }
;------------------------------------ Key 7 -------------------------------------------------
    #F7:: 
        prog7(){
            Run, code
        }
;------------------------------------ Key 8 -------------------------------------------------
    #F8:: 
        prog8(){
            Send {Volume_Down}
        }
    +#F8::
        prog_ShiftWinF8(){
            send ^#{Left}
        }
}

#Include program.specific/vscode.ahk
#Include program.specific/chrome.ahk
#Include program.specific/edge.ahk

;Examples
;#IfWinActive ahk_class Notepad
;^!c::MsgBox You pressed Control+Alt+C in Notepad.
;#IfWinActive ahk_class WordPadClass
;^!c::MsgBox You pressed Control+Alt+C in WordPad.
;#IfWinActive
;^!c::MsgBox You pressed Control+Alt+C in a window other than Notepad/WordPad.