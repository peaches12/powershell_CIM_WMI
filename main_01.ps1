

$filik_s_hostami = Read-Host -Prompt 'Enter file with hosts (one line one host)'

Write-Host ".."
Write-Host "..File: $filik_s_hostami"
Write-Host ".."


if (Test-Path $filik_s_hostami ) 
{ 
  write-host "-"
  write-host "CSV FILE ( $filik_s_hostami ) -- EXISTS."
  write-host "-"
}
else
{
  write-host "-"
  write-host "CSV FILE ( $filik_s_hostami ) -- DOESNT EXIST. EXITING."
  write-host "-"
  exit
}


$stroki_iz_filika = Import-CSV $filik_s_hostami -delimiter ','



$stroki_iz_filika | foreach {

    $tek_host = $_.host

    write-host "$tek_host"
}


# Get-CimInstance -ClassName win32_share -ComputerName

