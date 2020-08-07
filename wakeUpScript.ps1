nircmd.exe mutesysvolume 0
nircmd.exe setsysvolume 65535 


# Play a single file
$path = Get-Location
Add-Type -AssemblyName presentationCore
$mediaPlayer = New-Object system.windows.media.mediaplayer
$mediaPlayer.open(Get-Location+'\yaseen.mp3')
$mediaPlayer.Play()

# $path = Get-Location
# $Song = New-Object System.Media.SoundPlayer
# $Song.SoundLocation = ".\yaseen.mp3"
# $Song.Play()