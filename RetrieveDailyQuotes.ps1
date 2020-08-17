
$categories = @('inspire','management','sports', 'life', 'funny', 'love', 'art', 'students')

foreach ($category in $categories) {

    #Get Quote from Quote of the day API
    $quotesUrl = "https://quotes.rest/qod?language=en&category=$category"

    $object = Invoke-RestMethod -Method Get -Uri $quotesUrl -contenttype 'application/json'
    
    #Get the Quote and the Author from the response
    $quote = $object.contents.quotes[0].quote
    $author = $object.contents.quotes[0].author
    
    $dailyQuote = "$quote - $author"

    $filename = "$category.txt"
    
    Add-Content ".\Quotes\$filename" $dailyQuote
}
