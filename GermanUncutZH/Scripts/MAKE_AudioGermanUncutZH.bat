set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Define big file name(s)
set BigName=821_Audio%TargetLanguage%ZH

:: Free folders of big file contents
del /f /q /s %GeneratedBigFilesUnpackedDir%\%BigName%
del /f /q    %GeneratedBigFilesDir%\%BigName%.big

:: Copy .big contents
xcopy /y %GameFilesOriginalGermanDir%\Data\Audio\Sounds\German\*.*   %GeneratedBigFilesUnpackedDir%\%BigName%\Data\Audio\Sounds\%TargetLanguage%\
:: Copy clean English audio over muted, missing or muffled German Audio
xcopy /y %GameFilesOriginalEnglishDir%\Data\Audio\Sounds\English\*.* %GeneratedBigFilesUnpackedDir%\%BigName%\Data\Audio\Sounds\%TargetLanguage%\
:: Copy all clean German audio over the rest
xcopy /y %GameFilesEditedDir%\Data\Audio\Sounds\German\*.*           %GeneratedBigFilesUnpackedDir%\%BigName%\Data\Audio\Sounds\%TargetLanguage%\

:: Generate .big file(s)
%ToolsDir%\GeneralsBigCreator\GeneralsBigCreator.exe -source %GeneratedBigFilesUnpackedDir%\%BigName% -dest %GeneratedBigFilesDir%\%BigName%.big

:: Generate Release file(s)
xcopy /y %GeneratedBigFilesDir%\%BigName%.big %GeneratedReleaseUnpackedDir%\%BigName%.big*
