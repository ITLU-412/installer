Add-Type -AssemblyName System.Windows.Forms

# Alap form beállítása
$form = New-Object System.Windows.Forms.Form
$form.Text = "Winget Telepítő"
$form.Size = New-Object System.Drawing.Size(400, 550)
$form.StartPosition = "CenterScreen"
$form.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#263238")  # Sötétkék háttér
$form.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")  # Fehér szöveg
$form.Font = New-Object System.Drawing.Font("Eczar", 9)


# Kategóriák létrehozása

############ "Böngészők" címke
$labelBrowsers = New-Object System.Windows.Forms.Label
$labelBrowsers.Text = "Böngészők"
$labelBrowsers.Location = New-Object System.Drawing.Point(20, 20)
$labelBrowsers.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#95F9E3")  # Türkiz kiemelés
$form.Controls.Add($labelBrowsers)

# Böngésző checkboxok
$checkboxFirefox = New-Object System.Windows.Forms.CheckBox
$checkboxFirefox.Text = "Mozilla Firefox"
$checkboxFirefox.Location = New-Object System.Drawing.Point(20, 40)
$checkboxFirefox.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxFirefox)

$checkboxBrave = New-Object System.Windows.Forms.CheckBox
$checkboxBrave.Text = "Brave Browser"
$checkboxBrave.Location = New-Object System.Drawing.Point(20, 60)
$checkboxBrave.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxBrave)

$checkboxGoogleChrome = New-Object System.Windows.Forms.CheckBox
$checkboxGoogleChrome.Text = "Google Chrome"
$checkboxGoogleChrome.Location = New-Object System.Drawing.Point(20, 80)
$checkboxGoogleChrome.Width = 150  # Állítsd be a kívánt szélességet, például 150
$checkboxGoogleChrome.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxGoogleChrome)

########### "Játékok" címke
$labelGames = New-Object System.Windows.Forms.Label
$labelGames.Text = "Játékok"
$labelGames.Location = New-Object System.Drawing.Point(20, 110)
$labelGames.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#69EBD0")
$form.Controls.Add($labelGames)

# Játékok checkboxok
$checkboxSteam = New-Object System.Windows.Forms.CheckBox
$checkboxSteam.Text = "Steam"
$checkboxSteam.Location = New-Object System.Drawing.Point(20, 130)
$checkboxSteam.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxSteam)

$checkboxEpic = New-Object System.Windows.Forms.CheckBox
$checkboxEpic.Text = "Epic Games"
$checkboxEpic.Location = New-Object System.Drawing.Point(20, 150)
$checkboxEpic.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxEpic)

########## "Egyéb" címke
$labelOthers = New-Object System.Windows.Forms.Label
$labelOthers.Text = "Egyéb"
$labelOthers.Location = New-Object System.Drawing.Point(20, 280)
$labelOthers.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#49D49D")
$form.Controls.Add($labelOthers)

# Egyéb checkboxok
$checkboxtorrent = New-Object System.Windows.Forms.CheckBox
$checkboxtorrent.Text = "qBittorrent"
$checkboxtorrent.Location = New-Object System.Drawing.Point(20, 300)
$checkboxtorrent.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxtorrent)

$checkboxNotepad = New-Object System.Windows.Forms.CheckBox
$checkboxNotepad.Text = "Notepad++"
$checkboxNotepad.Location = New-Object System.Drawing.Point(20, 320)
$checkboxNotepad.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxNotepad)

$checkboxFigma = New-Object System.Windows.Forms.CheckBox
$checkboxFigma.Text = "Figma"
$checkboxFigma.Location = New-Object System.Drawing.Point(20, 340)
$checkboxFigma.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxFigma)

$checkboxHWinfo = New-Object System.Windows.Forms.CheckBox
$checkboxHWinfo.Text = "HWinfo"
$checkboxHWinfo.Location = New-Object System.Drawing.Point(20, 360)
$checkboxHWinfo.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxHWinfo)

$checkboxWinRAR = New-Object System.Windows.Forms.CheckBox
$checkboxWinRAR.Text = "WinRAR"
$checkboxWinRAR.Location = New-Object System.Drawing.Point(20, 380)
$checkboxWinRAR.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxWinRAR)

$checkboxPCManager = New-Object System.Windows.Forms.CheckBox
$checkboxPCManager.Text = "PCManager"
$checkboxPCManager.Location = New-Object System.Drawing.Point(20, 400)
$checkboxPCManager.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($checkboxPCManager)

####### Telepítés gomb
$installButton = New-Object System.Windows.Forms.Button
$installButton.Text = "Telepítés"
$installButton.Location = New-Object System.Drawing.Point(20, 475)
$installButton.BackColor = [System.Drawing.ColorTranslator]::FromHtml("#00C853")  # Zöld gomb
$installButton.FlatStyle = "Flat"
$installButton.ForeColor = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$form.Controls.Add($installButton)

# Telepítés esemény
$installButton.Add_Click({
    $commands = @()
    if ($checkboxFirefox.Checked) { $commands += "winget install -e --id Mozilla.Firefox" }
    if ($checkboxGoogleChrome.Checked) { $commands += "winget install -e --id Google.Chrome" }
    if ($checkboxBrave.Checked) { $commands += "winget install -e --id Brave.Brave" }
    if ($checkboxSteam.Checked) { $commands += "winget install -e --id Valve.Steam" }
    if ($checkboxtorrent.Checked) { $commands += "winget install -e --id qBittorrent.qBittorrent" }
    if ($checkboxNotepad.Checked) { $commands += "winget install -e --id Notepad++.Notepad++" }
    if ($checkboxEpic.Checked) { $commands += "winget install -e --id EpicGames.EpicGamesLauncher" }
    if ($checkboxFigma.Checked) { $commands += "winget install -e --id Figma.Figma" }
    if ($checkboxHWinfo.Checked) { $commands += "winget install -e --id REALiX.HWiNFO" }
    if ($checkboxWinRAR.Checked) { $commands += "winget install -e --id RARLab.WinRAR" }
    if ($checkboxPCManager.Checked) { $commands += "winget install -e --id Microsoft.PCManager" }

    if ($commands.Count -gt 0) {
        foreach ($command in $commands) {
            # Telepítési folyamat jelzése a konzolban
            Write-Host "Folyamatban: $command"

            # Telepítés parancs végrehajtása
            try {
                Start-Process "powershell" -ArgumentList "-Command", $command -NoNewWindow -Wait -ErrorAction Stop
                Write-Host "Sikeresen telepítve: $command" -ForegroundColor Green


            } catch {
                # Hibakezelés a konzolban
                Write-Host "Hiba történt a(z) $command telepítésekor: $_" -ForegroundColor Red
                return
            }
        }
        # Telepítés befejezése
        Write-Host "Minden program telepítése kész!" -ForegroundColor Cyan
    } else {
        # Ha nincs kiválasztott program
        Write-Host "Nincs kiválasztva telepítendő program." -ForegroundColor Yellow
    }
})

# Form megjelenítése
$form.Topmost = $true
$form.Add_Shown({$form.Activate()})
[void]$form.ShowDialog()
