# Usage -open the Powershell profile (ii $profile)
# paste the below into the file

Function search-google {
        $query = 'https://www.google.com/search?q='
        $args | % { $query = $query + "$_+" }
        $url = $query.Substring(0, $query.Length - 1)
        start "$url"
}

Set-Alias glg search-google

# restart the powershell session
# from the console, just run the new command glg hello world
# no quotes for strings needed