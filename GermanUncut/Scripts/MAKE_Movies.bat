set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Free folders of files
del /f /q %GeneratedReleaseUnpackedDir%\Data\%TargetLanguage%\Movies\*.*
del /f /q %GeneratedReleaseUnpackedDir%\Data\Movies\*.*

:: Copy files
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Movies\*.* %GeneratedReleaseUnpackedDir%\Data\%TargetLanguage%\Movies\
xcopy /y %GameFilesOriginalGermanDir%\Data\Movies\*.*        %GeneratedReleaseUnpackedDir%\Data\Movies\
