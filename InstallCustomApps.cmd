: Install scoop
: Set authorizations
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
: Allow vbs scripts
reg add "HKLM\Software\Microsoft\Windows Script Host\Settings" /v Enabled /t REG_DWORD /d 1
: Call install script
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
: Add git
scoop install git
: Add extra buckets
scoop bucket add extras
: Install aria2 for faster and multi connection download
scoop install aria2 ^
: Main utilities
7zip ^
windows-terminal
: Coding
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
scoop bucket add wsl https://git.irs.sh/KNOXDEV/wsl
: scoop install wsl-ubuntu2004
scoop install archwsl ^
: Install X server
vcxsrv ^
: Install i3
: Browser
vivaldi ^
chromium ^
firefox ^
: Art
: Media
audacity ^
blender ^
: Organisation
: Learning
anki ^
 