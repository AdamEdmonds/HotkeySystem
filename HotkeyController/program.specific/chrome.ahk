
#IfWinActive, ahk_class Chrome_WidgetWin_1
{

    ;;No assignment will result in Default Handler Firing.
    ;<!#+^F1:: 
    ;    chrome_prog1(){
    ;        MsgBox "No Chrome Handler for Key 1"
    ;    }
    ;#F2:: 
    ;    chrome_prog2(){
    ;        Click 100
    ;    }
    ;#F3:: 
    ;    chrome_prog3(){
    ;        Click 50
    ;    }

    ;<!#+^F4:: 
    ;    chrome_prog4(){
    ;        MsgBox "No Chrome Handler for Key 4"
    ;    }

            
    ;Cookie Clicker Helpers

Toggle = 0
#MaxThreadsPerHotkey 2
    #F5:: 
        ;chrome_prog5(){ ; Do not use MethodNames on Toggle Commands.
        Toggle := !Toggle
         While Toggle{
                Click
                sleep 50
            }
            return
        ;}
    #+F5:: 
        chrome_prog_ShiftWin5(){
            Click 100
        }
    #!F5:: 
        chrome_prog_AltWin5(){
            Click 500
        }
    #+!F5:: 
        chrome_prog_AltShiftWin5(){
            Click 1000
        }
    ;#F6::
    ;    chrome_prog6(){
    ;        Click 2
    ;    }
    #F7::
        chrome_WinF7(){
            Send ^t
            Send chrome://bookmarks/{enter}

        }
    +#F7:: 
        chrome_ShiftWinF7(){
            Send ^t
            Send http://www.youtube.com{enter}
        }
    ;<!#+^F8:: 
    ;    chrome_prog8(){
    ;        MsgBox "No Chrome Handler for Key 8"
    ;    }
}