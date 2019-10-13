@echo off
if not exist ".makenotice" (
    echo Notice!
    echo This batch file is a self-interpreted emulation of Makefile.
    echo Note that it doesn't support key features like running multiple targets or
    echo specifying target dependencies. Use at your own risk and read @rem-arked hints in script.
    echo.
    ping localhost -n 3 >NUL
    echo. >.makenotice
)

set PWD=%~dp0
set workdir=%PWD%.work
set tbombdir=%PWD%TBomb
set crackdir=%PWD%Crack
set deobfdir=%PWD%Deobfuscate

if "%1" == "mkenv" goto :mkenv
if "%1" == "getbomb" goto :getbomb
if "%1" == "crack" goto :crack
if "%1" == "prettify" goto :prettify
if "%1" == "clean" goto :clean

:notarget
echo :: No targets found matching '%1'. Exiting.
goto :eof

:getbomb
echo :: Running getbomb target...
if not exist %tbombdir% git clone git://github.com/darkestentropy/tbomb.git %tbombdir%
goto :aftertarget

:mkenv 
@rem @dependsOn getbomb
echo :: Running mkenv target...
mkdir %workdir%
copy %tbombdir%\bomber.py %workdir%\bomber.py.source
goto :aftertarget

:crack 
@rem @dependsOn mkenv
echo :: Running crack target...
python %crackdir%\decompress_zlib.py %workdir%
python %crackdir%\debytize.py %workdir%
python %crackdir%\attach_cracker.py %workdir% %crackdir%
python %workdir%\bomber.py.cracker_attached> %workdir%\bomber.py.cracked
copy /Y %workdir%\bomber.py.cracked %workdir%\bomber.py.source
python %crackdir%\decompress_lzma.py %workdir%
copy /Y %workdir%\bomber.py.decompressed %workdir%\bomber.py.cracked
copy /Y %workdir%\bomber.py.cracked %PWD%bomber.py.cracked
goto :aftertarget

:prettify 
@rem @dependsOn crack
echo :: Running prettify target...
autopep8 --in-place -aaa %PWD%bomber.py.cracked
goto :aftertarget

:clean
echo :: Running clean target...
rd /s /q %workdir%
rd /s /q %tbombdir%
goto :aftertarget

:aftertarget
if not "%ERRORLEVEL%" == "0" (
    echo :: Task failed ^(exit code %ERRORLEVEL%^)
) else (
    echo :: Task finished successfully.
)
goto :eof
