Dim objResult, oFSO, oTxtFile 
Dim max, min

Set oFSO = CreateObject("Scripting.FileSystemObject")  
Set oTxtFile = oFSO.CreateTextFile("C:\Temp\Woodpecker_ON.txt",True)    
oTxtFile.Write "Script running... delete this file to kill the script." & vbCrLf 
oTxtFile.Close

Set objShell = WScript.CreateObject("WScript.Shell")    

max = 20000
min = 1000
Do While oFSO.FileExists("C:\Temp\Woodpecker_ON.txt") 
  Randomize
  objResult = objShell.sendkeys("{NUMLOCK}{NUMLOCK}")
  Wscript.Sleep (Int((max-min+1)*Rnd+min))
Loop

