set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Define big file name(s)
set BigName=821_%TargetLanguage%

:: Free folders of big file contents
del /f /q /s %GeneratedBigFilesUnpackedDir%\%BigName%
del /f /q    %GeneratedBigFilesDir%\%BigName%.big

:: Copy .big contents
xcopy /y %GameFilesOriginalGermanDir%\Data\German\*.*                %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\*.dds %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\INI\*.*                   %GeneratedBigFilesUnpackedDir%\%BigName%\Data\INI\

:: Generate .big file(s)
%ToolsDir%\GeneralsBigCreator\GeneralsBigCreator.exe -source %GeneratedBigFilesUnpackedDir%\%BigName% -dest %GeneratedBigFilesDir%\%BigName%.big

:: Generate Release file(s)
xcopy /y %GeneratedBigFilesDir%\%BigName%.big %GeneratedReleaseUnpackedDir%\%BigName%.big*
