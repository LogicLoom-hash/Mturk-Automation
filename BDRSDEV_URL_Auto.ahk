; Hotkey to run the script (e.g., Ctrl+Shift+P)
^+p::

; Copy URL from the current tab in Chrome
IfWinExist, ahk_class Chrome_WidgetWin_1
{
    WinActivate
    WinWaitActive, ahk_class Chrome_WidgetWin_1
    
    ; Focus on the address bar and copy the URL
    Send, ^l
    Sleep, 100
    Send, ^c
    Sleep, 500
    
    ; Store the copied URL
    ClipSaved := clipboard
    
    ; Ensure clipboard has content
    if (ClipSaved = "")
    {
        MsgBox, Clipboard is empty. Please try again.
        Return
    }
    
    ; Use Alt+Tab to switch to the MTurk tab
    Send, !{Tab}  ; Alt+Tab to switch to the previous window (assumed to be MTurk)
    Sleep, 500  ; Wait for the switch to happen

    ; Move to the first "URL where value was found" field
    Send, {Tab 3}
    Sleep, 500  ; Brief pause to ensure the field is focused

    ; Paste the URL into all six fields
    Loop, 6
    {
        ; Paste the URL directly from variable
        Send, %ClipSaved%
        Sleep, 500  ; Wait for the paste action
        
        ; Move to the next field
        Send, {Tab 4}
        Sleep, 500  ; Wait for the tabbing to complete
    }
}

; End of script
return
