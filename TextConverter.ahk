#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
SendMode Input
#SingleInstance force

CodeName=TextConverter

;Start code
ProgramIni:

gui, new
gui, add, text, , Text to Convert:
gui, add, edit, r10 vTextToConvert w200
gui, add, button, Convert w200, Convert
gui, add, button, Clipboard x10 y197 w200, Copy to Clipboard
gui, add, button, Clear x10 y225 w200, Clear
gui, add, text, x11 y258 , Text Divisor:
gui, add, edit, r1 vInterline x75 y255 w134

gui, Show
Return

ButtonConvert:
ControlGet, LineAmount, LineCount, , Edit1
Gui, Submit, NoHide
StringReplace, ConvertedText, TextToConvert, `n, %Interline%, A
GuiControl, , TextToConvert, %ConvertedText%
return

ButtonCopytoClipboard:
Gui, Submit, NoHide
Clipboard = %ConvertedText%
Return

ButtonClear:
ControlSetText, Edit1,
Return

GuiClose:
ExitApp
