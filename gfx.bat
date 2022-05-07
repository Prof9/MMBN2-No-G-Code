@echo off

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-gospelhq-dedupl.pal.png" Read-Palettes -y 8 -h 8 --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\mapanim-gospelhq-back-0.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP -x  0 -y   8 -w 40 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  16 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  24 -w 64 -h 24 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  48 -w 72 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  56 -w 80 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y  88 -w 64 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 24 -y  96 -w 56 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 32 -y 104 -w 32 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-back-0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-back-1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 16 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y   8 -w 40 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  16 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  24 -w 64 -h 24 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  48 -w 72 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  56 -w 80 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y  88 -w 64 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 24 -y  96 -w 56 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 32 -y 104 -w 32 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-back-1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-back-2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 16 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y   8 -w 40 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  16 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  24 -w 64 -h 24 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  48 -w 72 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  56 -w 80 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y  88 -w 64 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 24 -y  96 -w 56 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 32 -y 104 -w 32 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-back-2.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-back-3.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 16 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y   8 -w 40 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  16 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  24 -w 64 -h 24 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  48 -w 72 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y  56 -w 80 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y  88 -w 64 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 24 -y  96 -w 56 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 32 -y 104 -w 32 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-back-3.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\mapanim-gospelhq-back.img.bin" ^
	|| exit /b 0

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-gospelhq-dedupl.pal.png" Read-Palettes -y 0 -h 8 --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\mapanim-gospelhq-bg-0.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-bg-0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-bg-1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-bg-1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-bg-2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-bg-2.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-bg-3.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-bg-3.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\mapanim-gospelhq-bg-4.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\mapanim-gospelhq-bg-4.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\mapanim-gospelhq-bg.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\super-clear.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\super-clear.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-8BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\super-clear.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\super-clear.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-acdctown.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-acdctown-layer0.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-acdctown-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-acdctown-layer0.img.bin" ^
	Import-Bitmap "img\map-acdctown-layer1.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-acdctown-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-acdctown-layer1.img.bin" ^
	Import-Bitmap "img\map-acdctown-layer2.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-acdctown-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-acdctown-layer2.img.bin" ^
	Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\map-acdctown.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-electopia-boarding.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-electopia-boarding-layer0.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-electopia-boarding-layer0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-netopia-boarding.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-netopia-boarding-layer0.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-netopia-boarding-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-boarding-layer0.img.bin" ^
	Import-Bitmap "img\map-electopia-boarding.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-electopia-boarding-layer1.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-electopia-boarding-layer1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-netopia-boarding.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-netopia-boarding-layer1.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-netopia-boarding-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-boarding-layer1.img.bin" ^
	Import-Bitmap "img\map-electopia-boarding.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-electopia-boarding-layer2.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-electopia-boarding-layer2.map.bin" ^
	Clear-Tilemap ^
	Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\map-electopia-boarding.pal.bin" ^
	Import-Bitmap "img\map-netopia-boarding.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-netopia-boarding-layer2.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-netopia-boarding-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-boarding-layer2.img.bin" ^
	Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\map-netopia-boarding.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-mothercomp12-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp1-layer0.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp1-layer0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp2-layer0.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp2-layer0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp3-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp3-layer0.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp3-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-mothercomp123-layer0.img.bin" ^
	Import-Bitmap "img\map-mothercomp12-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp1-layer1.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp1-layer1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp2-layer1.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp2-layer1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp3-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp3-layer1.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp3-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-mothercomp123-layer1.img.bin" ^
	Import-Bitmap "img\map-mothercomp12-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp1-layer2.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp1-layer2.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp2-layer2.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp2-layer2.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp3-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp3-layer2.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp3-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-mothercomp123-layer2.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-mothercomp45-dedupl.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-mothercomp4-layer0.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp4-layer0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp5-layer0.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp5-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-mothercomp45-layer0.img.bin" ^
	Import-Bitmap "img\map-mothercomp4-layer1.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp4-layer1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp5-layer1.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp5-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-mothercomp45-layer1.img.bin" ^
	Import-Bitmap "img\map-mothercomp4-layer2.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp4-layer2.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\map-mothercomp5-layer2.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-mothercomp5-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-mothercomp45-layer2.img.bin" ^
	Import-Bitmap "img\map-mothercomp45-n64.pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\map-mothercomp45-n64.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-gospelserver-dedupl.pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\map-gospelserver1-dedupl-layer0.png" Convert-Bitmap GBA ^
	Pad-Tileset 1 ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --no-reduce --append ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelserver1-layer0.map.bin" ^
	Import-Bitmap "img\map-gospelserver2-dedupl-layer0.png" Convert-Bitmap GBA ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelserver2-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-gospelserver-layer0.img.bin" ^
	Import-Bitmap "img\map-gospelserver1-dedupl-layer1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelserver1-layer1.map.bin" ^
	Import-Bitmap "img\map-gospelserver2-dedupl-layer1.png" Convert-Bitmap GBA ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelserver2-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-gospelserver-layer1.img.bin" ^
	Import-Bitmap "img\map-gospelserver1-dedupl-layer2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelserver1-layer2.map.bin" ^
	Import-Bitmap "img\map-gospelserver2-dedupl-layer2.png" Convert-Bitmap GBA ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelserver2-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-gospelserver-layer2.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-gospelhq-dedupl.pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\map-gospelhq-dedupl-layer0.png" Convert-Bitmap GBA ^
	Pad-Tileset 1 ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w 32 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y  8 -w 48 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 64 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  8 -y 48 -w 48 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 16 -y 56 -w 40 -h  8 --no-reduce --append ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelhq-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-gospelhq-layer0.img.bin" ^
	Import-Bitmap "img\map-gospelhq-dedupl-layer1.png" Convert-Bitmap GBA ^
	Clear-Tileset Clear-Tilemap ^
	Pad-Tileset 1 ^
	Generate-Tilemap GBA-4BPP -x 864 -y  40 -w 16 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 864 -y  48 -w 40 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 864 -y  56 -w 48 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 864 -y  64 -w 64 -h 24 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 864 -y  88 -w 72 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 864 -y  96 -w 80 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 880 -y 128 -w 64 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 888 -y 136 -w 56 -h  8 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 896 -y 144 -w 32 -h  8 --no-reduce --append ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelhq-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-gospelhq-layer1.img.bin" ^
	Import-Bitmap "img\map-gospelhq-dedupl-layer2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-gospelhq-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-gospelhq-layer2.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\map-yaishp.pal.png" Read-Palettes --palette-size 16 ^
	Import-Bitmap "img\map-yaishp-tiles.png" ^
	Generate-Tilemap GBA-4BPP --no-reduce Clear-Tilemap ^
	Import-Bitmap "img\map-yaishp-layer0.png" ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-yaishp-layer0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-yaishp-layer0.img.bin" ^
	Import-Bitmap "img\map-yaishp-layer1.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-yaishp-layer1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-yaishp-layer1.img.bin" ^
	Import-Bitmap "img\map-yaishp-layer2.png" ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\map-yaishp-layer2.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\map-yaishp-layer2.img.bin" ^
	Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\map-yaishp.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\title.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\title.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-8BPP ^
	Serialize-Tilemap --base-tile 1 Export-Bytes "%_TEMP%\title.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\title.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\title.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\copyright.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\copyright.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y 0 -w 32 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y 0 -w 32 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  64 -y 0 -w 32 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x  96 -y 0 -w 32 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 128 -y 0 -w 32 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 160 -y 0 -w 32 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 192 -y 0 -w 32 -h 32 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 224 -y 0 -w 32 -h 32 --no-reduce --append ^
	Serialize-Tileset Export-Bytes "%_TEMP%\copyright.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\newgame.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\newgame.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y 0 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -y 0 -w 32 -h 16 --no-reduce --append ^
	Generate-Tilemap GBA-4BPP -x 64 -y 0 -w 16 -h 16 --no-reduce --append ^
	Serialize-Tileset Export-Bytes "%_TEMP%\newgame.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\chip-ok-dedupl.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\chip-ok.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\chip-ok.img.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\menu.pal.png" Read-Palettes --palette-size 16 --palette-number 13 Convert-Palettes GBA ^
	Import-Bitmap "img\menu-0.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x240 Export-Bytes "%_TEMP%\menu-0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\menu-1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap --base-tile 0x240 Export-Bytes "%_TEMP%\menu-1.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\menu-2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap --base-tile 0x240 Export-Bytes "%_TEMP%\menu-2.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\menu-3.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap --base-tile 0x240 Export-Bytes "%_TEMP%\menu-3.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\menu-status.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap --base-tile 0x240 Export-Bytes "%_TEMP%\menu-status.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\menu.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\menu.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Set-Variable temp "%_TEMP%" ^
	Run-Script "gfx-screen.txt" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\money.pal.png" Read-Palettes --palette-size 16 --palette-number 13 Convert-Palettes GBA ^
	Import-Bitmap "img\money-zenny.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x20 Export-Bytes "%_TEMP%\money-zenny.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\money-bugfrag.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --append ^
	Serialize-Tilemap --base-tile 0x20 Export-Bytes "%_TEMP%\money-bugfrag.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\money.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\money.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\results.pal.png" Read-Palettes --palette-size 16 --palette-number 9 Convert-Palettes GBA ^
	Import-Bitmap "img\results-0.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\results-0.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\results-0.img.bin" ^
	Import-Bitmap "img\results-1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\results-1.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\results-1.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\results.pal.bin" ^
	|| exit /b 1

"tools\PixelPet.exe" ^
	Import-Bitmap "img\gameover.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\gameover.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\gameover.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\gameover.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\gameover.pal.bin" ^
	|| exit /b 1

exit /b 0
