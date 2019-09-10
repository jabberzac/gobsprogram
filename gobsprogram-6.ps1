$gobsWidth = 42   # afaict Windows will give the window an extra two horizontal characters for the scroll bar while the program is running, even if there is no scroll bar
$gobsHeight = 10
$origTitle = $Host.UI.RawUI.WindowTitle

# determine operation system and powers hell version
if ($PSVersionTable.PSVersion.Major -lt 6 -or ($PSVersionTable.PSVersion.Major -ge 6 -and $IsWindows)) {
  # Windows
  $origWindow = $Host.UI.RawUI.WindowSize
  $origBuffer = $Host.UI.RawUI.BufferSize

  $gobsWindow = $origWindow
  $gobsWindow.Width = $gobsWidth
  $gobsWindow.Height = $gobsHeight
  $Host.UI.RawUI.Set_WindowSize($gobsWindow)

  $gobsBuffer = $origBuffer
  $gobsBuffer.Width = $gobsWidth
  $gobsBuffer.Height = $gobsHeight
  $Host.UI.RawUI.Set_BufferSize($gobsBuffer)
}
elseif ($IsLinux -or $IsMacOS) {
  $gobsWidth = 40
  # can't set window parameters. how about u get a real operation system.
}
elseif ($IsCoreCLR) {
  # man this probably won't even work at all. what the hell are you doing.
}

$gobsString = "Penus"
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Green"
$Host.UI.RawUI.WindowTitle = "Gob's Program"

Clear-Host # reset terminal so that colors take effect
Write-Host -NoNewline "`n`n`n`n`n`n`n`n" # "scroll" to the bottom of the window
Write-Host -NoNewline "Gob's Program:  Y/N?" # inital prompt/description
Write-Host -NoNewline "`n? " # the actual prompt for user input, on a new line
$gobsChoice = [console]::ReadLine() # Read-Host would append a colon (:)

if ($gobsChoice -eq "y") {
  try {
    While($True) {
      foreach ($i in (0..($gobsString.Length + 2))) {
        if ($i -lt ($gobsString.Length)) {
          # 0-4, add a letter
          Write-Host -NoNewline $([char[]]$gobsString[$i])
        }
        elseif ($i -le ($gobsString.Length + 1)) {
          # 5-6, add a space
          Write-Host -NoNewline " "
        }
      }
    }
  }
  finally {   # "try" to capture Ctrl+C, and reset all the window parameters
      if ($PSVersionTable.PSVersion.Major -lt 6 -or ($PSVersionTable.PSVersion.Major -ge 6 -and $IsWindows)) {
        $Host.UI.RawUI.Set_BufferSize($origBuffer)    # do the buffer first
        $Host.UI.RawUI.Set_WindowSize($origWindow)
      }
      $Host.UI.RawUI.WindowTitle = $origTitle
      Clear-Host
      [Console]::ResetColor()
  }
}
else {
  if ($PSVersionTable.PSVersion.Major -lt 6 -or ($PSVersionTable.PSVersion.Major -ge 6 -and $IsWindows)) {
    $Host.UI.RawUI.Set_BufferSize($origBuffer)
    $Host.UI.RawUI.Set_WindowSize($origWindow)
  }
  $Host.UI.RawUI.WindowTitle = $origTitle
  Clear-Host
  [Console]::ResetColor()
}
