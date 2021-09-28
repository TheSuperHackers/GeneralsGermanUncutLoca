set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Define big file name(s)
set BigName=821_%TargetLanguage%ZH

:: Free folders of big file contents
del /f /q /s %GeneratedBigFilesUnpackedDir%\%BigName%
del /f /q    %GeneratedBigFilesDir%\%BigName%.big

:: Copy .big contents
xcopy /y %GameFilesDir0%\Data\%SourceLanguage%\*.*              %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesDir0%\Data\%SourceLanguage%\Art\Textures\*.* %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesDir1%\Data\%SourceLanguage%\*.*              %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesDir1%\Data\%SourceLanguage%\Art\Textures\*.* %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesDir1%\Data\%SourceLanguage%\Art\W3D\*.*      %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\W3D\

:: Discard now obsolete files
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Install_Final.bmp
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\launcher.bmp
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\DEFEATED.tga
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\Victorious.tga
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\UITerdrone01.tga
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\ZHCA_UITerdrone01.tga
del /f /q %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\SCGenChallengeWinLoss512.INI

:: Compress TGA and PSD to DDS and delete intermediate source copies
call %ThisDir1%\CrunchTextures.bat %GeneratedBigFilesUnpackedDir%\%BigName%

:: Generate .big file(s)
%ToolsDir%\GeneralsBigCreator\GeneralsBigCreator.exe -source %GeneratedBigFilesUnpackedDir%\%BigName% -dest %GeneratedBigFilesDir%\%BigName%.big

:: Generate Release file(s)
xcopy /y %GeneratedBigFilesDir%\%BigName%.big %GeneratedReleaseUnpackedDir%\%BigName%.big*
