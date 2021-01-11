' This script is meant to be launched from the Windows side, to start up a decorationless
' VcXsrv container for the environment.
'
' You may need to change this to reflect your VcXsrv install path as well as screen resolution.
' Then after the VcXsrv container is running, it pulls the WSL Ubuntu into it, along with a launch script.

Set shell = CreateObject("WScript.Shell" ) 
shell.Run """vcxsrv.exe"" :0 -screen 0 @1 -ac +xinerama -engine 1 -nodecoration -wgl"
WScript.Sleep 200
shell.Run "arch -c ""~/.scripts/wlaunch""", 0