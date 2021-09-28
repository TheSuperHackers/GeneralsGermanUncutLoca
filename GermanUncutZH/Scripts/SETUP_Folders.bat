:: Setup work folders
set ProjectDir="%~dp0.."
set ToolsDir=%ProjectDir%\..\Tools
set GameFilesDir0=%ProjectDir%\GameFilesOriginal
set GameFilesDir1=%ProjectDir%\GameFilesEdited
set ReleaseUnpackedDir=%ProjectDir%\ReleaseUnpacked
set ReleaseDir=%ProjectDir%\.Release

set GeneratedBigFilesUnpackedDir=%ProjectDir%\.Generated\BigFilesUnpacked
set GeneratedBigFilesDir=%ProjectDir%\.Generated\BigFiles

set GeneratedReleaseUnpackedDir=%ProjectDir%\.Generated\ReleaseUnpacked

set SourceLanguage=German
set TargetLanguage=GermanUncut

:: Create folders
if not exist %ReleaseDir% mkdir %ReleaseDir%
if not exist %GeneratedBigFilesUnpackedDir% mkdir %GeneratedBigFilesUnpackedDir%
if not exist %GeneratedBigFilesDir% mkdir %GeneratedBigFilesDir%
if not exist %GeneratedReleaseUnpackedDir% mkdir %GeneratedReleaseUnpackedDir%

setlocal enableextensions enabledelayedexpansion
