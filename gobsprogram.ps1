$gobswidth = 40
$gobsheight = 10
$gobsbuffer = New-Object System.Management.Automation.Host.Size `
  $gobswidth,$gobsheight
$gobswindow = New-Object System.Management.Automation.Host.Size `
  $gobswidth,$gobsheight
$Host.UI.RawUI.WindowSize = $gobswindow
$Host.UI.RawUI.BufferSize = $gobsbuffer
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Green"
$Host.UI.RawUI.WindowTitle = "Gob's Program"

Clear-Host # reset terminal so that colors take effect
Write-Host -NoNewline "`n`n`n`n`n`n`n`n" # "scroll" to the bottom of the window
Write-Host -NoNewline "Gob's Program:  Y/N?" # inital prompt/description
Write-Host -NoNewline "`n? " # the actual prompt for user input, on a new line
$gobschoice = [console]::ReadLine() # Read-Host will append a colon (:)

if ( $gobschoice -eq "y" ) {
  Do {
    Write-Host -NoNewline "Penus  Penus  Penus  Penus  Penus  Penus"
  }  while (1)
}
