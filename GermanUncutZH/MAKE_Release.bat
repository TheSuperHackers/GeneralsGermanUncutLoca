set ThisDir0="%~dp0."
call %ThisDir0%\Scripts\MAKE_AudioGermanUncutZH.bat
call %ThisDir0%\Scripts\MAKE_Movies.bat
call %ThisDir0%\Scripts\MAKE_GermanUncutZH.bat
call %ThisDir0%\Scripts\MAKE_SpeechGermanUncutZH.bat
call %ThisDir0%\Scripts\MAKE_Splash.bat
call %ThisDir0%\Scripts\MAKE_W3DGermanUncutZH.bat

:: Copy base release files
xcopy /y /s %ReleaseUnpackedDir%\* %GeneratedReleaseUnpackedDir%\*

:: Define archive name(s)
set ArchiveName=GeneralsZH-104-%TargetLanguage%-v1.0

:: Generate Archive(s)
tar.exe -a -c -C %GeneratedReleaseUnpackedDir% -f %ReleaseDir%\%ArchiveName%.zip *.*
