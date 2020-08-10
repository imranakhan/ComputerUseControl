nircmd.exe mutesysvolume 0
nircmd.exe setsysvolume 65535 

# Play a single file
$path = Get-Location
$mediaFile = 'yaseen.mp3'
$filePath = Join-Path $path $mediaFile
$volume = 0.90

$randomNumber = Get-Random -Maximum 23
$quote = (Get-Content quotes.txt)[$randomNumber]

voice $quote

#vlc -I ncurses $filePath
vlc $filePath --gain=$volume
