;HotKey Symbol Chart - https://autohotkey.com/docs/Hotkeys.htm#Symbols

SetTitleMatchMode, 2  ;Set search mode to Contains



#IfWinActive ; Default Hotkey Handlers
{
    #F10:: ;F1 cannot be used as it is controlled by Windows
        prog1(){
            Send {Volume_Mute}
        }
    #F2:: 
        prog2(){
            Run chrome.exe
        }
    #F3:: 
        prog3(){
            Run, calc
        }
    #F4:: 
        prog4(){
            Send {Volume_Up}
        }
    #F5:: 
        prog5(){
            EnvGet, SystemRoot, SystemRoot
            Run powershell.exe -ExecutionPolicy unrestricted "Start-Process Powershell -verb runAs C:\Users\aedmonds\Source\Repos\AutoHotKey\HotkeyController\Powershell\scripts.ps1"
        }
    #F6:: 
        prog6(){
            Run, explorer.exe
        }
    #F7:: 
        prog7(){
            Run, code
        }
    #F8:: 
        prog8(){
            Send {Volume_Down}
        }
}

#Include program.specific/vscode.ahk
#Include program.specific/chrome.ahk


;Examples
;#IfWinActive ahk_class Notepad
;^!c::MsgBox You pressed Control+Alt+C in Notepad.
;#IfWinActive ahk_class WordPadClass
;^!c::MsgBox You pressed Control+Alt+C in WordPad.
;#IfWinActive
;^!c::MsgBox You pressed Control+Alt+C in a window other than Notepad/WordPad.