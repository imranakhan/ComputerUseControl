$token = "1389223003:AAGSYOvwwaDXGiZ7ARjrJTVxeCYGl3FjWy0"
$chatId = -425223399
$wallhaven_key = "mokfnXGDSHj1m8oTcOkq8fQguF2q29e4"
$query = "id:4944" #motivational
$category = "111"
$purity = "111"
$page = Get-Random -Maximum 6 -Minimum 1
$randomNumber = Get-Random -Maximum 64

$motivationUrl = "https://wallhaven.cc/api/v1/search?apikey=$wallhaven_key&q=$query&categories=$category&purity=$purity&page=$page"

Write-Host $motivationUrl

$object = Invoke-RestMethod -Method Get -Uri $motivationUrl -contenttype 'application/json'
$selectedPhotoUrl = $object.data[$randomNumber].path

# $urlFound = $false
# Do
# {
#     $object = Invoke-RestMethod -Method Get -Uri $motivationUrl -contenttype 'application/json'
#     $selectedPhotoUrl = $object.data[$randomNumber].path

#     If ($null -ne $selectedPhotoUrl && $selectedPhotoUrl -ne "") {
#         $urlFound = $true    
#     }

# } While($urlFound -eq $false)

Write-Host $selectedPhotoUrl

Send-TelegramURLPhoto -BotToken $token -ChatId $chatId -PhotoURL $selectedPhotoUrl
