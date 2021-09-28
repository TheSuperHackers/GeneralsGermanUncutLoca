set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Define big file name(s)
set BigName=821_%TargetLanguage%

:: Free folders of big file contents
del /f /q /s %GeneratedBigFilesUnpackedDir%\%BigName%
del /f /q    %GeneratedBigFilesDir%\%BigName%.big

:: Copy .big contents
xcopy /y %GameFilesDir0%\Data\%SourceLanguage%\*.*                %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesDir0%\Data\%SourceLanguage%\Art\Textures\*.dds %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesDir1%\Art\Textures\*.*                         %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\
xcopy /y %GameFilesDir1%\Art\W3D\*.*                              %GeneratedBigFilesUnpackedDir%\%BigName%\Art\W3D\

:: Generate .big file(s)
%ToolsDir%\GeneralsBigCreator\GeneralsBigCreator.exe -source %GeneratedBigFilesUnpackedDir%\%BigName% -dest %GeneratedBigFilesDir%\%BigName%.big

:: Generate Release file(s)
xcopy /y %GeneratedBigFilesDir%\%BigName%.big %GeneratedReleaseUnpackedDir%\%BigName%.big*
