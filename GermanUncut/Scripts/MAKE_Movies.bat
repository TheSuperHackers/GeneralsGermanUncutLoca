set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Free folders of files
del /f /q /s %GeneratedReleaseUnpackedDir%\*.bik

:: Copy files
xcopy /y %GameFilesDir0%\Data\%SourceLanguage%\Movies\*.bik %GeneratedReleaseUnpackedDir%\Data\%TargetLanguage%\Movies\
xcopy /y %GameFilesDir0%\Data\Movies\*.bik                  %GeneratedReleaseUnpackedDir%\Data\Movies\
