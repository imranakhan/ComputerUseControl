$token = "1389223003:AAGSYOvwwaDXGiZ7ARjrJTVxeCYGl3FjWy0"
$chatId = -425223399

$randomNumber = Get-Random -Maximum 123 -Minimum 1
$quote = (Get-Content quotes.txt)[$randomNumber]

Send-TelegramTextMessage -BotToken $token -ChatId $chatId -Message $quote