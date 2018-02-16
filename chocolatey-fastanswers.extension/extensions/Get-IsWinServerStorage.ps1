function Get-IsWinServerStorage{
$server=Get-IsWinServer
if ($server -ne $true) {
   return $false
   } else {
     $IsServerStorage=((Get-WmiObject win32_operatingsystem).caption)
     if ($IsServerStorage -match "Storage") {return $true} else {return $false}
    }
}	