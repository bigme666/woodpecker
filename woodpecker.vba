Dim objResult, oFSO, oTxtFile 

Set oFSO = CreateObject("Scripting.FileSystemObject")  
Set oTxtFile = oFSO.CreateTextFile("C:\Temp\Woodpecker_ON.txt",True)    
    oTxtFile.Write "Woodpecker script is running... delete this file to kill the script." & vbCrLf 
oTxtFile.Close

Set objShell = WScript.CreateObject("WScript.Shell")    

Do While oFSO.FileExists("C:\Temp\Woodpecker_ON.txt") 
  objResult = objShell.sendkeys("{NUMLOCK}{NUMLOCK}")
  Wscript.Sleep (6000)
Loop

