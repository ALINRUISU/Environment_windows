
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
cinst git
cinst gitextensions
cinst githubforwindows
cinst cmder
cinst 7zip
cinst vcode
cinst notepadplusplus
cinst visualstudiocode
cinst golang
cinst python3
cinst pip
cinst easy.install

# System Related
cinst terraform
cinst packer
cinst virutalbox
cinst virtualbox.extensionpack
cinst vagrant

# Browser
cinst firefox
cinst GoogleChrome

# cloud related
cinst awscli


# misc
cinst vlc
cinst slack
cinst rufus


