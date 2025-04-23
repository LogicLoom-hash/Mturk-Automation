# Mturk-Automation
MTurk URL Auto-Filler
A Chrome-to-MTurk automation script using AutoHotkey (AHK).

# **Overview**:
This script automates copying a URL from Chrome and pasting it into multiple fields on MTurk (Mechanical Turk), saving time for repetitive data-entry tasks.

# **Features**:
One-key operation: Trigger with Ctrl+Shift+P.

Chrome integration: Copies the active tab’s URL.

MTurk compatibility: Pastes the URL into 6 sequential fields.

Error handling: Checks for empty clipboard.

# **Setup**:
Prerequisites
AutoHotkey v1.1+ installed.

Chrome and MTurk tabs open.

# **Installation**:
Download the script:

bash
git clone https://github.com/yourusername/MTurk-URL-AutoFiller.git
Run the script:
Double-click BDRSDEV_URL_Auto.ahk or compile it to an .exe.

# **Usage**:
Navigate to the desired URL in Chrome.

Press Ctrl+Shift+P to:

Copy the URL.
Switch to MTurk.
Auto-fill 6 fields with the URL.

# **Customization**:
Adjust delays: Modify Sleep, 500 if MTurk loads slowly.
Change hotkey: Replace ^+p:: with another key combo (e.g., ^!u::).

# **Code Explanation**:
ahk
; Copy URL from Chrome
Send, ^l  ; Focus address bar
Send, ^c  ; Copy URL

; Paste into MTurk fields
Loop, 6 {
    Send, %ClipSaved%
    Send, {Tab 4}  ; Move to next field
}

# **Limitations**:
Requires Chrome as the active window before triggering.

MTurk field layout must match the script’s tab sequence.
