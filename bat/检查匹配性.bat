@echo on
setlocal enabledelayedexpansion
set seqname=SkateboardTrick
set QP=37
set PATH_BIN=E:\ZWJ_DOC\360\mcts\tozwj20170615\tozwj20170615\bin
set logname=compare_tile4K_15X15QP_LDP.log
set M=8
set N=5
set frame_num=100
set wdt=2560
set hgt=1600
set /a TileNum=%M%*%N%-1
mkdir tmp
echo check mcts > %logname%
for %%s in (%seqname%) do (
	for %%q in (%QP%) do (	
::		ffmpeg -i %PATH_BIN%\str_RA_%%s_qp%%q_%frame_num%f_40Pmcts.bin -vframes %frame_num% tmp\org.yuv -y
		TileSplit.exe -i %PATH_BIN%\str_RA_%%s_qp%%q_%frame_num%f_40Pmcts.bin -o tmp\out.bin

		cd tmp
		
		set qq=0
		set pp=9
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=8
		set pp=17
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=16
		set pp=25
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=24
		set pp=26
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=32
		set pp=27
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=33
		set pp=28
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=34
		set pp=29
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=35
		set pp=30
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=36
		set pp=18
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=37
		set pp=19
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=38
		set pp=20
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=39
		set pp=21
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=31
		set pp=22
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=23
		set pp=10
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=15
		set pp=11
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=7
		set pp=12
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=6
		set pp=13
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin
		
		set qq=5
		set pp=14
        rename out_!qq!.bin out_!qq!_!pp!.bin		
		rename out_!pp!.bin out_!pp!_!qq!.bin
		rename out_!qq!_!pp!.bin out_!pp!.bin
		rename out_!pp!_!qq!.bin out_!qq!.bin		
		
			
		cd ../	
		tilemerge.exe -i tmp\out -width 320 -height 320 -m %M% -n %N% -mm %M% -nn %N% -o tmp\merge_RA_%%s_qp%%q_%frame_num%f_40Pmcts.bin
		
		ffmpeg -i tmp\merge_RA_%%s_qp%%q_%frame_num%f_40Pmcts.bin -vframes %frame_num% tmp\org.yuv -y
		
		for /l %%m in (0,1,%TileNum%) do (
		  TAppDecoder.exe -b tmp\out_%%m.bin -o tmp\out_%%m.yuv
		)
		
		merge_yuv.exe -i tmp\out.yuv -o tmp\test_out.yuv -width %wdt% -height %hgt% -m %M% -n %N% -frame %frame_num%
		echo Compare_%%s_qp%%q_%frame_num% >> %logname%
		compare_tile.exe -i tmp\org.yuv -o tmp\test_out.yuv  -width %wdt% -height %hgt% >> %logname%	
	rem 	if exist tmp rd tmp /Q/S
	)
)