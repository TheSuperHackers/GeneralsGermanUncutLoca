set ThisDir0="%~dp0."
call %ThisDir0%\Scripts\MAKE_ArtGermanUncut.bat
call %ThisDir0%\Scripts\MAKE_AudioGermanUncut.bat
call %ThisDir0%\Scripts\MAKE_Movies.bat
call %ThisDir0%\Scripts\MAKE_GermanUncut.bat
call %ThisDir0%\Scripts\MAKE_SpeechGermanUncut.bat
call %ThisDir0%\Scripts\MAKE_Splash.bat

:: Copy base release files
xcopy /y /s %ReleaseUnpackedDir%\* %GeneratedReleaseUnpackedDir%\*

:: Define archive name(s)
set ArchiveName=%TargetLanguage%_v1.0

:: Generate Archive(s)
tar.exe -a -c -C %GeneratedReleaseUnpackedDir% -f %ReleaseDir%\%ArchiveName%.zip *.*
