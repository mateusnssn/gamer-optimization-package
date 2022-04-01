set objshell = wscript.createobject("wscript.shell")
 objshell.run("%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks"),0, true