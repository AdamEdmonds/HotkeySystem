;HotKey Symbol Chart - https://autohotkey.com/docs/Hotkeys.htm#Symbols

SetTitleMatchMode, 2  ;Set search mode to Contains



#IfWinActive ; Default Hotkey Handlers
{
    <!#+^F1:: 
        prog1(){
            Run, explorer.exe
        }
    <!#+^F2:: 
        prog2(){
            MsgBox "No Default Handler Assigned to Key 2"
        }
    <!#+^F3:: 
        prog3(){
            Run, calc
        }
    <!#+^F4:: 
        prog4(){
            MsgBox "No Default Handler Assigned to Key 4"
        }
    <!#+^F5:: 
        prog5(){
            MsgBox "No Default Handler Assigned to Key 5"
        }
    <!#+^F6:: 
        prog6(){
            MsgBox "No Default Handler Assigned to Key 6"
        }
    <!#+^F7:: 
        prog7(){
            MsgBox "No Default Handler Assigned to Key 7"
        }
    <!#+^F8:: 
        prog8(){
            MsgBox "No Default Handler Assigned to Key 8"
        }
}

#Include program.specific/vscode.ahk


;Examples
;#IfWinActive ahk_class Notepad
;^!c::MsgBox You pressed Control+Alt+C in Notepad.
;#IfWinActive ahk_class WordPadClass
;^!c::MsgBox You pressed Control+Alt+C in WordPad.
;#IfWinActive
;^!c::MsgBox You pressed Control+Alt+C in a window other than Notepad/WordPad.