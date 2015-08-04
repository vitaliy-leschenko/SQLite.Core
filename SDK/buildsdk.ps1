if (!(Test-Path 'src\Redist\CommonConfiguration\ARM\')) { New-Item -ItemType directory -Path 'src\Redist\CommonConfiguration\ARM\' }
if (!(Test-Path 'src\Redist\CommonConfiguration\x86\')) { New-Item -ItemType directory -Path 'src\Redist\CommonConfiguration\x86\' }
if (!(Test-Path 'src\Redist\CommonConfiguration\x64\')) { New-Item -ItemType directory -Path 'src\Redist\CommonConfiguration\x64\' }
if (!(Test-Path 'src\References\CommonConfiguration\ARM\')) { New-Item -ItemType directory -Path 'src\References\CommonConfiguration\ARM\' }
if (!(Test-Path 'src\References\CommonConfiguration\x86\')) { New-Item -ItemType directory -Path 'src\References\CommonConfiguration\x86\' }
if (!(Test-Path 'src\References\CommonConfiguration\x64\')) { New-Item -ItemType directory -Path 'src\References\CommonConfiguration\x64\' }

Copy-Item ..\SQLite.Core\SQLite.Core.Universal\bin\ARM\Release\SQLite.Core.dll src\Redist\CommonConfiguration\ARM\SQLite.Core.dll
Copy-Item ..\SQLite.Core\SQLite.Core.Universal\bin\Win32\Release\SQLite.Core.dll src\Redist\CommonConfiguration\x86\SQLite.Core.dll
Copy-Item ..\SQLite.Core\SQLite.Core.Universal\bin\x64\Release\SQLite.Core.dll src\Redist\CommonConfiguration\x64\SQLite.Core.dll
Copy-Item ..\SQLite.Core\SQLite.Core.Universal\bin\ARM\Release\SQLite.Core.winmd src\References\CommonConfiguration\ARM\SQLite.Core.winmd
Copy-Item ..\SQLite.Core\SQLite.Core.Universal\bin\Win32\Release\SQLite.Core.winmd src\References\CommonConfiguration\x86\SQLite.Core.winmd
Copy-Item ..\SQLite.Core\SQLite.Core.Universal\bin\x64\Release\SQLite.Core.winmd src\References\CommonConfiguration\x64\SQLite.Core.winmd
