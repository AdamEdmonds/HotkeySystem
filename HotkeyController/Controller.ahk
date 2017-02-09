;HotKey Symbol Chart - https://autohotkey.com/docs/Hotkeys.htm#Symbols

SetTitleMatchMode, 2



#IfWinActive ; Default Hotkey Handlers
{
    <!#+^F1:: MsgBox "Prog1 Default Handler"
    <!#+^F2:: MsgBox "Prog2 Default Handler"
    <!#+^F3:: MsgBox "Prog3 Default Handler"
    <!#+^F4:: MsgBox "Prog4 Default Handler"
    <!#+^F5:: MsgBox "Prog5 Default Handler"
    <!#+^F6:: MsgBox "Prog6 Default Handler"
    <!#+^F7:: MsgBox "Prog7 Default Handler"
    <!#+^F8:: MsgBox "Prog8 Default Handler"
}

#Include program.specific/vscode.ahk


Example
;#IfWinActive ahk_class Notepad
;^!c::MsgBox You pressed Control+Alt+C in Notepad.
;#IfWinActive ahk_class WordPadClass
;^!c::MsgBox You pressed Control+Alt+C in WordPad.
;#IfWinActive
;^!c::MsgBox You pressed Control+Alt+C in a window other than Notepad/WordPad.