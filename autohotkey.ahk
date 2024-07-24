#InputLevel 1 
; disable quotes dead-key behaviour
':: SendInput, {U+0027}
":: SendInput, {U+0022}

#InputLevel 0
; macOS-like dead-keys behaviour
<^>!e::Send, % Chr(39) ; dead key for '
<^>!u::Send, % Chr(34) ; dead key for "
<^>!i::Send, % Chr(94) ; dead key for ^

; Dark/Light Theme Switch
#/::Run powershell.exe /c "New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1 -Type Dword -Force" ,, hide
#+/::Run powershell.exe /c "New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force" ,, hide

; CapsLock -> Context Menu
CapsLock::AppsKey
