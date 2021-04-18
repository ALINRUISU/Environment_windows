
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
cinst notepadplusplus -y
cinst visualstudiocode -y
cinst vscode-docker -y
cinst vscode-powershell -y
cinst vscode-kubernetes-tools -y
cinst golang -y
cinst python3 -y
cinst pip -y
cinst easy.install -y
cinst fiddler -y
cinst vmware-powercli-psmodule -y

# System Related
cinst terraform -y
cinst packer -y
cinst virutalbox -y
cinst vagrant -y
cinst winrar -y
cinst winscp -y
cinst wireshark -y


# Browser
cinst firefox -y
cinst chromium -y

# cloud related
cinst awscli -y

# containers related
cinst kubernetes-cli -y
cinst trivy -y
cinst docker-cli -y
cinst kubernetes-kompose -y
cinst kubernetes-helm -y
cinst kubeval -y
cinst aksctl -y
cinst kubens -y
cinst kubectx -y
cinst kubernetes-kops -y
cinst istioctl -y

# misc
cinst vlc -y
cinst slack -y
cinst rufus -y
cinst keepass.install -y
cinst lastpass -y
cinst lastpass-chrome -y

# security tools
cinst nmap -y
