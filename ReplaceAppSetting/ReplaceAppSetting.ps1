# ReplaceAppSetting.ps1
# Based on http://kevsoft.net/2015/09/18/using-powershell-to-replace-appsettings.html

param([Parameter(Mandatory=$True)][string]$sourceFile,
    [Parameter(Mandatory=$True)][string]$targetFile,
    [Parameter(Mandatory=$True)][string]$key,
    [Parameter(Mandatory=$True)][string]$value)

$version = "0.1.0"

Write-Output "ReplaceAppSetting"
Write-Output "Version $version"

Write-Output "Loading config file from $sourceFile"
$xml = [xml](Get-Content $sourceFile)

ForEach($add in $xml.configuration.appSettings.add)
{
    if($add.key -eq $key)
    {
        Write-Output "Found matching environment variable for key: $($add.key)"
        Write-Output "Replacing value '$($add.value)' with '$value'"

        $add.value = $value
    }
}

Write-Output "Writing to config file $targetFile"
$xml.Save($targetFile)
