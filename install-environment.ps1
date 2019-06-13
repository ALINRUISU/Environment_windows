
Set-ExecutionPolicy unrestricted

# Install WSL
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart

# Custom Environment
Push-Location
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced

# Show file extensions
Set-ItemProperty . HideFileExt "0"
# Show hidden files
Set-ItemProperty . Hidden "1"

Pop-Location

# Force Windows Explorer restart so settings take effect
Stop-Process -processName: Explorer -force

# Install chocolatey    
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Development
cinst git -y
cinst gitextensions -y
cinst githubforwindows -y
cinst cmder -y
cinst 7zip -y
cinst vcode -y
cinst vscode-powershell -y
cinst notepadplusplus -y
cinst visualstudiocode -y
cinst golang -y
cinst python3 -y
cinst pip -y
cinst easy.install -y
cinst fiddler -y
cinst sql-server-management-studio -y


# System Related
cinst terraform -y
cinst packer -y
cinst virutalbox -y
cinst virtualbox.extensionpack -y
cinst vagrant -y
cinst winrar -y
cinst winscp -y
cinst wireshark -y
cinst filezilla -y
cinst kubernetes-cli -y
cinst iperf3 -y

# Browser
cinst firefox -y
cinst chromium -y

# cloud related
cinst awscli -y
cinst azurepowershell -y


# misc
cinst vlc -y
cinst slack -y
cinst rufus -y
cinst keepass.install -y
cinst lastpass -y
cinst lastpass-chrome -y

# security tools
cinst nmap -y
