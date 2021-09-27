$d = 'c:\win10exe' 
mkdir $d 
$ComObj = New-Object System.Net.WebClient 
$exedl = “https://go.microsoft.com/fwlink/?LinkID=799445" 
$exe = “$($d)\Win10Upgrade.exe” 
$ComObj.DownloadFile($exedl,$exe) 
Start-Process -FilePath $exe -ArgumentList “/quietinstall /skipeula /auto upgrade /copylogs $d”