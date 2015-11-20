# ReplaceAppSetting
PowerShell script to replace an appSetting value.

## Main Script File

[ReplaceAppSetting.ps1](ReplaceAppSetting/ReplaceAppSetting.ps1)

## Executing the Script

```powershell
ReplaceAppSetting.ps1 -sourceFile Source.config -targetFile Target.config -key keyToMatch -value newValue
```

## Modifying and Building

This script was created using the following:

* Visual Studio 2013
* [PowerShell Tools for Visual Studio 2013](https://visualstudiogallery.msdn.microsoft.com/f65f845b-9430-4f72-a182-ae2a7b8999d7)

## Credits

* http://kevsoft.net/2015/09/18/using-powershell-to-replace-appsettings.html
