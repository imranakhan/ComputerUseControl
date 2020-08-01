#Check to see if the LogonUI process is running. It is running when the computer is Locked and UI is showing
$ProcessName = "LogonUI"
if((get-process $ProcessName -ErrorAction SilentlyContinue) -eq $Null) { 
    echo "Process is not running" 
    #Lock the computer
    rundll32.exe user32.dll,LockWorkStation
}
else { 
    echo "Process is running" 
    #Do Nothing
}


#For infinite loop for the check in script
#while(1)
#{
#   start-sleep -seconds 600
#}
