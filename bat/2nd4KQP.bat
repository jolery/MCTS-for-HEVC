@echo off
setlocal enabledelayedexpansion
set taskname=DrivingInCountry
set wdt=3840
set hgt=1920
set M=4
set N=2
set QP1=4500


set seqname=DrivingInCountry

set PATH_BIN=.\
set logname=%taskname%.log

set frame_num=300

set /a TileNum=%M%*%N%-1

echo check mcts > %logname%
for %%s in (%seqname%) do (
	for %%q in (%QP1%) do (	
	    if not exist tmp md tmp		
		TileSplit.exe -i %PATH_BIN%\str_RA_%%s_qp%%q.bin -o tmp\out.bin		
		for /l %%m in (0,1,%TileNum%) do (
		  TAppDecoder.exe -b tmp\out_%%m.bin -o tmp\out_%%m.yuv
		)		
		ffmpeg -i %PATH_BIN%\str_RA_%%s_qp%%q.bin -vframes %frame_num% tmp\org.yuv -y
		merge_yuv.exe -i tmp\out.yuv -o tmp\test_out.yuv -width %wdt% -height %hgt% -m %M% -n %N% -frame %frame_num%
		echo Compare_%%s_qp%%q_%frame_num% >> %logname%
		compare_tile.exe -i tmp\org.yuv -o tmp\test_out.yuv  -width %wdt% -height %hgt% >> %logname%
	)
)