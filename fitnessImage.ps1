$token = "1389223003:AAGSYOvwwaDXGiZ7ARjrJTVxeCYGl3FjWy0"
$chatId = -498768087
$wallhaven_key = "mokfnXGDSHj1m8oTcOkq8fQguF2q29e4"
$queryMen = "muscles -women" #fitness model
$queryWorkout = "workout" #Includes Women
$category = "001"
$purity = "100"

$page = 1#Get-Random -Maximum 1 -Minimum 1
$pageNumber = Get-Random -Maximum 3 -Minimum 1
$pageMax = 64 #Since there are 64 images per page

if($pageNumber -eq 3) {
    $pageMax = 20 #Since the 3rd page for this workout query has 20 images
}
$randomNumber = Get-Random -Maximum $pageMax -Minimum 1

$fitnessUrl = "https://wallhaven.cc/api/v1/search?apikey=$wallhaven_key&q=$queryWorkout&categories=$category&purity=$purity&page=$page"

Write-Host $fitnessUrl

$object = Invoke-RestMethod -Method Get -Uri $fitnessUrl -contenttype 'application/json'
$selectedPhotoUrl = $object.data[$randomNumber].path

Write-Host $selectedPhotoUrl

Send-TelegramURLPhoto -BotToken $token -ChatId $chatId -PhotoURL $selectedPhotoUrl