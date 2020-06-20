$fileArray = @{
    "*.mkv" = ".opus"
    "*.webm" = ".opus"
    "*.mp4" = ".m4a"
    "*.aac" = ".m4a"
    "*.ogg" = ".opus"
}

$fileArray.Keys |
Foreach-Object {
    $filter = $_
    Get-ChildItem "." -Filter $filter | 
    Foreach-Object {
        $file1 = $_.Name
        $file2 = $_.Name + $fileArray.Item($filter)
        .\ffmpeg.exe -i $file1 -vn -acodec copy $file2
        $(Get-Item -LiteralPath $file2).creationtime=$(Get-Date $(Get-Item -LiteralPath $file1).creationtime)
        $(Get-Item -LiteralPath $file2).LastWriteTime=$(Get-Date $(Get-Item -LiteralPath $file1).LastWriteTime)
    }
}
