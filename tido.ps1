Import-Module NtObjectManager

if (!$?) {
    Install-Module -Name NtObjectManager -RequiredVersion 1.1.32
    Import-Module NtObjectManager
}

Start-Service TrustedInstaller
$p = Get-NtProcess -Name TrustedInstaller.exe
$th = $p.GetFirstThread()
$current = Get-NtThread -Current -PseudoHandle
$imp = $current.ImpersonateThread($th)
$imp_token = Get-NtToken -Impersonation
#$imp_token.Groups | Where-Object {$_.Sid.Name -match "TrustedInstaller"}

if (Test-Path variable:global:imp_token) {
	Invoke-expression "$args"
}
Stop-Service TrustedInstaller
