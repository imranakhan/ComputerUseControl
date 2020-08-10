$token = "1389223003:AAGSYOvwwaDXGiZ7ARjrJTVxeCYGl3FjWy0"
$chatId = -498768087
$wallhaven_key = "mokfnXGDSHj1m8oTcOkq8fQguF2q29e4"
$query = "muscles -women" #fitness model
$category = "001"
$purity = "100"

$page = 1#Get-Random -Maximum 1 -Minimum 1
$randomNumber = Get-Random -Maximum 60

$fitnessUrl = "https://wallhaven.cc/api/v1/search?apikey=$wallhaven_key&q=$query&categories=$category&purity=$purity&page=$page"

Write-Host $fitnessUrl

$object = Invoke-RestMethod -Method Get -Uri $fitnessUrl -contenttype 'application/json'
$selectedPhotoUrl = $object.data[$randomNumber].path

Write-Host $selectedPhotoUrl

Send-TelegramURLPhoto -BotToken $token -ChatId $chatId -PhotoURL $selectedPhotoUrl