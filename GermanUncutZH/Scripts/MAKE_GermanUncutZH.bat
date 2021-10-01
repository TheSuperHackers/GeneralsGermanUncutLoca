set ThisDir1="%~dp0."
call %ThisDir1%\SETUP_Folders.bat

:: Define big file name(s)
set BigName=821_%TargetLanguage%ZH

:: Free folders of big file contents
del /f /q /s %GeneratedBigFilesUnpackedDir%\%BigName%
del /f /q    %GeneratedBigFilesDir%\%BigName%.big

:: Copy .big contents
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Autorun.csf                                     %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\CommandMap.ini                                  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\generals.csf                                    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\HeaderTemplate.ini                              %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Language.ini                                    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\readme.doc                                      %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\readme.txt                                      %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\TOS.doc                                         %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\TOS.txt                                         %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\

xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\defeated.dds                       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\gameover.dds                       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\loadpageuserinterface.tga          %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\Mp_Loaduserinterface.tga           %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\ReturnLoadPageuserinterface.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\

xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SAUserInterface512_001.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SAUserInterface512_002.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SAUserInterface512_003.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SAUserInterface512_004.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SAUserInterface512_005.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeSelect512_001.tga  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_001.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_002.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_003.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_004.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_005.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_006.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_007.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_008.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_009.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_010.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_011.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_012.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_013.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_014.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_015.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_016.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_017.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_018.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_019.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_020.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_021.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_022.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_023.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_024.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_025.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_026.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_027.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_028.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_029.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCGenChallengeWinLoss512_030.tga %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCShellUserInterface512_001.tga  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCShellUserInterface512_002.tga  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCShellUserInterface512_003.tga  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SCShellUserInterface512_004.tga  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\

xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCShellUserInterface512_005.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCShellUserInterface512_006.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCShellUserInterface512_007.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCShellUserInterface512_008.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCShellUserInterface512_009.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCShellUserInterface512_010.tga    %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\SCSmShellUserInterface512_001.tga  %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\Skirmish_Loaduserinterface.tga     %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\

xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SNUserInterface512_001.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SNUserInterface512_002.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SNUserInterface512_003.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SNUserInterface512_004.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SSUserInterface512_001.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SSUserInterface512_002.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SUUserInterface512_001.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SUUserInterface512_002.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SUUserInterface512_003.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\SUUserInterface512_004.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\

xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\TitleScreenuserinterface.tga       %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\
xcopy /y %GameFilesOriginalGermanDir%\Data\German\Art\Textures\victorious.dds                     %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\

xcopy /y %GameFilesOriginalEnglishDir%\Data\English\Art\Textures\ZHCA_PMNFlag.tga                 %GeneratedBigFilesUnpackedDir%\%BigName%\Data\%TargetLanguage%\Art\Textures\

:: Compress TGA and PSD to DDS and delete intermediate source copies
call %ThisDir1%\CrunchTextures.bat %GeneratedBigFilesUnpackedDir%\%BigName%

:: Generate .big file(s)
%ToolsDir%\GeneralsBigCreator\GeneralsBigCreator.exe -source %GeneratedBigFilesUnpackedDir%\%BigName% -dest %GeneratedBigFilesDir%\%BigName%.big

:: Generate Release file(s)
xcopy /y %GeneratedBigFilesDir%\%BigName%.big %GeneratedReleaseUnpackedDir%\%BigName%.big*
