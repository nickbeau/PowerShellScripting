function Get-POPSAppxPackageManifestExtended{
    # See blogpost for info about the function
    # https://popeen.com/2019/12/10/reading-the-manifest-of-an-appx-package-file/

    param(        $Package,
        $User
    )

    if(Test-Path $Package){
        Add-Type -Assembly "System.IO.Compression.FileSystem"
        $zip = [IO.Compression.ZipFile]::OpenRead($Package)
        $file = $zip.Entries | Where-Object { $_.Name -eq "AppxManifest.xml"}
        $stream = $file.Open()
        $reader = New-Object IO.StreamReader($stream)
        $xml = [XML]$reader.ReadToEnd()
        $reader.Close()
        $stream.Close()
        $zip.Dispose()
        $xml
    }else{
        if($User){
            Get-AppxPackageManifest -Package $Package -user $User
        }else{
            Get-AppxPackageManifest -Package $Package
        }
    }
}
