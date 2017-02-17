#IfWinActive, Visual Studio Code
{
    ;#F10:: 
    ;    vsc_prog1(){
    ;        MsgBox "No VSCode Handler for Key 1"
    ;    }
    ;#F2:: 
    ;    vsc_prog2(){
    ;        MsgBox "No VSCode Handler for Key 2"
    ;    }
    ; No assignment will result in Default Handler Firing.
    ;<!#+^F3:: 
    ;    vsc_prog3(){
    ;        MsgBox "No VSCode Handler for Key 3"
    ;    }
    ;#F4:: 
    ;    vsc_prog4(){
    ;        MsgBox "No VSCode Handler for Key 4"
    ;    }
    ;  #F5:: 
    ;      vsc_prog5(){
    ;          MsgBox "No VSCode Handler for Key 5"
    ;      }
    #F6::
        vsc_prog6(){
           Send ^{/} 
        }
    ;#F7:: 
    ;    vsc_prog7(){
    ;        MsgBox "No VSCode Handler for Key 7"
    ;    }
    ;#F8:: 
    ;    vsc_prog8(){
    ;        MsgBox "No VSCode Handler for Key 8"
    ;    }
}