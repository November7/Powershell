function Rename-FilesByDate {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Folder
    )

    $folderName = Split-Path $Folder -Leaf
    $files = Get-ChildItem -Path $Folder -File
    $counter = @{}

    foreach ($file in $files) {
        $date = $file.LastWriteTime.ToString("yyyy.MM.dd")

        if (-not $counter.ContainsKey($date)) {
            $counter[$date] = 0
        } else {
            $counter[$date]++
        }

        $suffix = ""
        if ($counter[$date] -gt 0) {
            $suffix = " ($($counter[$date]))"
        }

        $newName = "$date $folderName$suffix$($file.Extension)"
        Rename-Item -Path $file.FullName -NewName $newName
    }
}

Write-Host "Command Rename-FilesByDate has been loaded."