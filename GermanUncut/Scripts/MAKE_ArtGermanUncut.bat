set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Define big file name(s)
set BigName=821_Art%TargetLanguage%

:: Free folders of big file contents
del /f /q /s %GeneratedBigFilesUnpackedDir%\%BigName%
del /f /q    %GeneratedBigFilesDir%\%BigName%.big

:: Copy .big contents
xcopy /y %GameFilesOriginalGermanDir%\Art\Textures\*.*                              %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Art\W3D\*.*                                   %GeneratedBigFilesUnpackedDir%\%BigName%\Art\W3D\
:: Use simplified German2 badges to preserve original style
xcopy /y %GameFilesOriginalGerman2Dir%\Art\Textures\scshelluserinterface512_006.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\
xcopy /y %GameFilesOriginalGerman2Dir%\Art\Textures\scshelluserinterface512_007.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\
xcopy /y %GameFilesOriginalGerman2Dir%\Art\Textures\scshelluserinterface512_008.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\
xcopy /y %GameFilesOriginalGerman2Dir%\Art\Textures\scshelluserinterface512_009.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\
xcopy /y %GameFilesOriginalGerman2Dir%\Art\Textures\scshelluserinterface512_010.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Art\Textures\

:: Compress TGA and PSD to DDS and delete intermediate source copies
call %ThisDir1%\CrunchTextures.bat %GeneratedBigFilesUnpackedDir%\%BigName%

:: Generate .big file(s)
%ToolsDir%\GeneralsBigCreator\GeneralsBigCreator.exe -source %GeneratedBigFilesUnpackedDir%\%BigName% -dest %GeneratedBigFilesDir%\%BigName%.big

:: Generate Release file(s)
xcopy /y %GeneratedBigFilesDir%\%BigName%.big %GeneratedReleaseUnpackedDir%\%BigName%.big*
