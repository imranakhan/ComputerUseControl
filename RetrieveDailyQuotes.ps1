#$token = "1389223003:AAGSYOvwwaDXGiZ7ARjrJTVxeCYGl3FjWy0"
#$chatId = -425223399

$categories = @('inspire','management','sports', 'life', 'funny', 'love', 'art', 'students')
#$categories = @('inspire')

foreach ($category in $categories) {

    #$quotesUrl = "https://quotes.rest/qod?language=en&category=$category"

    #$object = Invoke-RestMethod -Method Get -Uri $quotesUrl -contenttype 'application/json'
    
    #Get the Quote and the Author from the response
    #$quote = $object.contents.quotes[0].quote
    #$author = $object.contents.quotes[0].author
    
    #$dailyQuote = "$quote - $author"

    $filename = "$category.txt"
    
    Add-Content ".\Quotes\$filename" "Hello World" #$dailyQuote
}


#git add .

#$date = Get-Date -DisplayHint Date
#git commit -m "Retrieve Daily Quotes for $date"
#git push origin master

#Send-TelegramTextMessage -BotToken $token -ChatId $chatId -Message $quote