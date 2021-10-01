:: Setup work folders
set ProjectDir="%~dp0.."
set ToolsDir=%ProjectDir%\..\Tools
set GameFilesOriginalGermanDir=%ProjectDir%\GameFilesOriginalGerman
set GameFilesOriginalEnglishDir=%ProjectDir%\GameFilesOriginalEnglish
set GameFilesEditedDir=%ProjectDir%\GameFilesEdited
set ReleaseUnpackedDir=%ProjectDir%\ReleaseUnpacked
set ReleaseDir=%ProjectDir%\.Release

set GeneratedBigFilesUnpackedDir=%ProjectDir%\.Generated\BigFilesUnpacked
set GeneratedBigFilesDir=%ProjectDir%\.Generated\BigFiles

set GeneratedReleaseUnpackedDir=%ProjectDir%\.Generated\ReleaseUnpacked

set TargetLanguage=GermanUncut

:: Create folders
if not exist %ReleaseDir% mkdir %ReleaseDir%
if not exist %GeneratedBigFilesUnpackedDir% mkdir %GeneratedBigFilesUnpackedDir%
if not exist %GeneratedBigFilesDir% mkdir %GeneratedBigFilesDir%
if not exist %GeneratedReleaseUnpackedDir% mkdir %GeneratedReleaseUnpackedDir%

setlocal enableextensions enabledelayedexpansion
