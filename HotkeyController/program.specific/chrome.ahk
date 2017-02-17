#IfWinActive, ahk_class Chrome_WidgetWin_1
{

    ;;No assignment will result in Default Handler Firing.
    ;<!#+^F1:: 
    ;    chrome_prog1(){
    ;        MsgBox "No Chrome Handler for Key 1"
    ;    }
    #F2:: 
        chrome_prog2(){
            Send ^t
            Send chrome://bookmarks/{enter}

        }
    #F3:: 
        chrome_prog3(){
            MsgBox "No Chrome Handler for Key 3"
        }

    ;<!#+^F4:: 
    ;    chrome_prog4(){
    ;        MsgBox "No Chrome Handler for Key 4"
    ;    }
    #F5:: 
        chrome_prog5(){
            Send ^`
        }
    #F6::
        chrome_prog6(){
            MsgBox "No Chrome Handler for Key 6"
        }
    #F7:: 
        chrome_prog7(){
            Send ^t
            Send http://www.youtube.com{enter}
        }
    ;<!#+^F8:: 
    ;    chrome_prog8(){
    ;        MsgBox "No Chrome Handler for Key 8"
    ;    }
}