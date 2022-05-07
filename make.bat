@echo off
setlocal

set "_TEMP=_temp"
set "_ROM_IN=_rom\mmbn2-us.gba"
set "_ROM_OUT=_rom\mmbn2-out.gba"

for %%f in ("%_ROM_OUT%") do (
	set "_SYM_OUT=%%~dpnf.sym"
	set "_TEMP_OUT=%%~dpnf.temp"
	set "_TPL_OUT=%%~dpnf.tpl"
	set "_TXT_OUT=%%~dpnf.txt"
)

rem goto :start

mkdir "%_TEMP%" 2> nul
pushd "%_TEMP%"
rmdir /S /Q . 2> nul
popd

if /I "%1"=="clean" (
	del /Q "%_SYM_OUT%" 2> nul
	del /Q "%_TEMP_OUT%" 2> nul
	del /Q "%_TPL_OUT%" 2> nul
	del /Q "%_TXT_OUT%" 2> nul
	del /Q "%_ROM_OUT%" 2> nul
	goto :done
)

if not exist "%_ROM_IN%" (
	echo File not found: "%_ROM_IN%"
	goto :error
)

:start
copy /Y "%_ROM_IN%" "%_TEMP%\rom.gba" || goto :error

rem goto :armips

echo Generating graphics...
call "gfx.bat" || goto :error

echo Converting maps...
python mergemap.py ^
	"%_TEMP%\map-acdctown-layer0.img.bin" "%_TEMP%\map-acdctown-layer0.map.bin" auto ^
	"%_TEMP%\map-acdctown-layer1.img.bin" "%_TEMP%\map-acdctown-layer1.map.bin" auto ^
	"%_TEMP%\map-acdctown-layer2.img.bin" "%_TEMP%\map-acdctown-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-acdctown.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-boarding-layer0.img.bin" "%_TEMP%\map-electopia-boarding-layer0.map.bin" auto ^
	"%_TEMP%\map-boarding-layer1.img.bin" "%_TEMP%\map-electopia-boarding-layer1.map.bin" auto ^
	"%_TEMP%\map-boarding-layer2.img.bin" "%_TEMP%\map-electopia-boarding-layer2.map.bin" 0 ^
	"%_TEMP%\map-electopia-boarding.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-boarding-layer0.img.bin" "%_TEMP%\map-netopia-boarding-layer0.map.bin" auto ^
	"%_TEMP%\map-boarding-layer1.img.bin" "%_TEMP%\map-netopia-boarding-layer1.map.bin" auto ^
	"%_TEMP%\map-boarding-layer2.img.bin" "%_TEMP%\map-netopia-boarding-layer2.map.bin" 0 ^
	"%_TEMP%\map-netopia-boarding.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-mothercomp123-layer0.img.bin" "%_TEMP%\map-mothercomp1-layer0.map.bin" auto ^
	"%_TEMP%\map-mothercomp123-layer1.img.bin" "%_TEMP%\map-mothercomp1-layer1.map.bin" auto ^
	"%_TEMP%\map-mothercomp123-layer2.img.bin" "%_TEMP%\map-mothercomp1-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-mothercomp1.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-mothercomp123-layer0.img.bin" "%_TEMP%\map-mothercomp2-layer0.map.bin" auto ^
	"%_TEMP%\map-mothercomp123-layer1.img.bin" "%_TEMP%\map-mothercomp2-layer1.map.bin" auto ^
	"%_TEMP%\map-mothercomp123-layer2.img.bin" "%_TEMP%\map-mothercomp2-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-mothercomp2.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-mothercomp123-layer0.img.bin" "%_TEMP%\map-mothercomp3-layer0.map.bin" auto ^
	"%_TEMP%\map-mothercomp123-layer1.img.bin" "%_TEMP%\map-mothercomp3-layer1.map.bin" auto ^
	"%_TEMP%\map-mothercomp123-layer2.img.bin" "%_TEMP%\map-mothercomp3-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-mothercomp3.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-mothercomp45-layer0.img.bin" "%_TEMP%\map-mothercomp4-layer0.map.bin" auto ^
	"%_TEMP%\map-mothercomp45-layer1.img.bin" "%_TEMP%\map-mothercomp4-layer1.map.bin" auto ^
	"%_TEMP%\map-mothercomp45-layer2.img.bin" "%_TEMP%\map-mothercomp4-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-mothercomp4.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-mothercomp45-layer0.img.bin" "%_TEMP%\map-mothercomp5-layer0.map.bin" auto ^
	"%_TEMP%\map-mothercomp45-layer1.img.bin" "%_TEMP%\map-mothercomp5-layer1.map.bin" auto ^
	"%_TEMP%\map-mothercomp45-layer2.img.bin" "%_TEMP%\map-mothercomp5-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-mothercomp5.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-gospelserver-layer0.img.bin" "%_TEMP%\map-gospelserver1-layer0.map.bin" auto ^
	"%_TEMP%\map-gospelserver-layer1.img.bin" "%_TEMP%\map-gospelserver1-layer1.map.bin" auto ^
	"%_TEMP%\map-gospelserver-layer2.img.bin" "%_TEMP%\map-gospelserver1-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-gospelserver1.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-gospelserver-layer0.img.bin" "%_TEMP%\map-gospelserver2-layer0.map.bin" auto ^
	"%_TEMP%\map-gospelserver-layer1.img.bin" "%_TEMP%\map-gospelserver2-layer1.map.bin" auto ^
	"%_TEMP%\map-gospelserver-layer2.img.bin" "%_TEMP%\map-gospelserver2-layer2.map.bin" -0x200 ^
	"%_TEMP%\map-gospelserver2.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-yaishp-layer0.img.bin" "%_TEMP%\map-yaishp-layer0.map.bin" auto ^
	"%_TEMP%\map-yaishp-layer1.img.bin" "%_TEMP%\map-yaishp-layer1.map.bin" auto ^
	"%_TEMP%\map-yaishp-layer2.img.bin" "%_TEMP%\map-yaishp-layer2.map.bin" 0 ^
	"%_TEMP%\map-yaishp.map.bin" ^
	|| goto :error
python mergemap.py ^
	"%_TEMP%\map-gospelhq-layer0.img.bin" "%_TEMP%\map-gospelhq-layer0.map.bin" auto ^
	"%_TEMP%\map-gospelhq-layer1.img.bin" "%_TEMP%\map-gospelhq-layer1.map.bin" auto ^
	"%_TEMP%\map-gospelhq-layer2.img.bin" "%_TEMP%\map-gospelhq-layer2.map.bin" 0 ^
	"%_TEMP%\map-gospelhq.map.bin" ^
	|| goto :error

:textpet
echo Importing text...
"tools\TextPet.exe" ^
	Load-Plugins "tools\plugins" ^
	Game MMBN2 ^
	Load-File-Index "tools\indexes\mmbn2-us.tpi" ^
	Read-Text-Archives "%_TEMP%\rom.gba" ^
	Read-Text-Archives "text.tpl" --patch ^
	Write-Text-Archives "%_TPL_OUT%" --format tpl --single ^
	Write-Text-Archives "%_TXT_OUT%" --format txt --single ^
	Write-Text-Archives "%_TEMP%\rom.gba" ^
	|| goto :error

echo Compressing files...
copy /Y "%_TEMP%\map-acdctown-layer0.img.bin" "%_TEMP%\map-acdctown-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-acdctown-layer1.img.bin" "%_TEMP%\map-acdctown-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-acdctown-layer2.img.bin" "%_TEMP%\map-acdctown-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-acdctown.map.bin" "%_TEMP%\map-acdctown.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-boarding-layer0.img.bin" "%_TEMP%\map-boarding-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-boarding-layer1.img.bin" "%_TEMP%\map-boarding-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-boarding-layer2.img.bin" "%_TEMP%\map-boarding-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-electopia-boarding.map.bin" "%_TEMP%\map-electopia-boarding.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-netopia-boarding.map.bin" "%_TEMP%\map-netopia-boarding.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp123-layer0.img.bin" "%_TEMP%\map-mothercomp123-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp123-layer1.img.bin" "%_TEMP%\map-mothercomp123-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp123-layer2.img.bin" "%_TEMP%\map-mothercomp123-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp1.map.bin" "%_TEMP%\map-mothercomp1.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp2.map.bin" "%_TEMP%\map-mothercomp2.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp3.map.bin" "%_TEMP%\map-mothercomp3.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp45-layer0.img.bin" "%_TEMP%\map-mothercomp45-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp45-layer1.img.bin" "%_TEMP%\map-mothercomp45-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp45-layer2.img.bin" "%_TEMP%\map-mothercomp45-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp4.map.bin" "%_TEMP%\map-mothercomp4.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-mothercomp5.map.bin" "%_TEMP%\map-mothercomp5.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelserver-layer0.img.bin" "%_TEMP%\map-gospelserver-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelserver-layer1.img.bin" "%_TEMP%\map-gospelserver-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelserver-layer2.img.bin" "%_TEMP%\map-gospelserver-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelserver1.map.bin" "%_TEMP%\map-gospelserver1.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelserver2.map.bin" "%_TEMP%\map-gospelserver2.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-yaishp-layer0.img.bin" "%_TEMP%\map-yaishp-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-yaishp-layer1.img.bin" "%_TEMP%\map-yaishp-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-yaishp-layer2.img.bin" "%_TEMP%\map-yaishp-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-yaishp.map.bin" "%_TEMP%\map-yaishp.map.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelhq-layer0.img.bin" "%_TEMP%\map-gospelhq-layer0.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelhq-layer1.img.bin" "%_TEMP%\map-gospelhq-layer1.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelhq-layer2.img.bin" "%_TEMP%\map-gospelhq-layer2.img.lz.bin" || goto :error
copy /Y "%_TEMP%\map-gospelhq.map.bin" "%_TEMP%\map-gospelhq.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-acdctown-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-acdctown-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-acdctown-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-acdctown.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-boarding-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-boarding-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-boarding-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-electopia-boarding.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-netopia-boarding.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp123-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp123-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp123-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp1.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp2.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp3.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp45-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp45-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp45-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp4.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-mothercomp5.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelserver-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelserver-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelserver-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelserver1.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelserver2.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-yaishp-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-yaishp-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-yaishp-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-yaishp.map.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelhq-layer0.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelhq-layer1.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelhq-layer2.img.lz.bin" || goto :error
"tools\lzss.exe" -ewo "%_TEMP%\map-gospelhq.map.lz.bin" || goto :error

:armips
"tools\armips.exe" "src.asm" ^
	-strequ TEMP "%_TEMP%" ^
	-strequ ROM_IN "%_TEMP%\rom.gba" ^
	-strequ ROM_OUT "%_TEMP%\rom.gba" ^
	-sym "%_SYM_OUT%" ^
	-temp "%_TEMP_OUT%" ^
	-erroronwarning ^
	|| goto :error

copy /Y "%_TEMP%\rom.gba" "%_ROM_OUT%"

:done
echo Done
exit /b 0

:error
echo Error
pause
exit /b 1