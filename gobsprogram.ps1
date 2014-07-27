$gobswidth = 40
$gobsheight = 10
$gobsbuffer = New-Object System.Management.Automation.Host.Size $gobswidth,$gobsheight
$gobswindow = New-Object System.Management.Automation.Host.Size $gobswidth,$gobsheight
$Host.UI.RawUI.WindowSize = $gobswindow
$Host.UI.RawUI.BufferSize = $gobsbuffer
$Host.UI.RawUI.WindowTitle = "Gob's Program"

Write-Host "Gob's Program:  Y/N?"
$gobschoice = Read-Host

if ( $gobschoice -eq "y" ) {
  Do {
    Write-Host -NoNewline "Penus  Penus  Penus  Penus  Penus  Penus"
  }  while (1)
}
