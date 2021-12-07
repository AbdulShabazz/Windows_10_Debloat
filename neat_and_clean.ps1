Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

#If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
#	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
#	Exit
#}

$Form                         = New-Object system.Windows.Forms.Form
$Form.ClientSize              = New-Object System.Drawing.Point(1050,1000)
$Form.text                    = "Windows 10 Debloat"
$Form.StartPosition           = "CenterScreen"
$Form.TopMost                 = $false
$Form.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#e9e9e9")
$Form.AutoScaleDimensions     = '192, 192'
$Form.AutoScaleMode           = "Dpi"
$Form.AutoSize                = $True
$Form.AutoScroll              = $True
$Form.ClientSize              = '1050, 1000'
$Form.FormBorderStyle         = 'FixedSingle'

$MyList = @(
"List"
)

Write-Host "Qualifying processes..."
Get-Process | Format-List
$msg = "FAIL"
if ("List" in $MyList) {
	$msg = "SUCCESS"
}
Write-Host "$msg"
Start-Sleep -Seconds 120
#Write-Host "Qualifying services..."
#Stop-Process 

