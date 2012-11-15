set resultPath=%1
set ClonePj=%2
set ServerPath=\\vse4001\public\v-huhuo\git

REM==Clone TestProject for Pull
rem git clone -n https://github.com/Jiange/TestProject.git ../%ClonePj%

cd FileSizer
rem==============
REM Start the Git senarioes for file Size.

rem=====001
cd FileSize
git add file1KSize.TXT
git commit -m "This is test perf of 1K Size file"

echo This is test perf of 1K Size file>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../%ClonePj%
echo This is test perf of 1K Size file for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%

rem=====002
cd ../TestProject/FileSize
git add file10KSize.TXT
git commit -m "This is test perf of 10K Size file"

echo This is test perf of 10K Size file>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../%ClonePj%
echo This is test perf of 10K Size file for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%

rem=====003
cd ../TestProject/FileSize
git add file100KSize.TXT
git commit -m "This is test perf of 100K Size file"

echo This is test perf of 100K Size file>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../%ClonePj%
echo This is test perf of 100K Size file for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%

rem=====004
cd ../TestProject/FileSize
git add file1MBSize.TXT
git commit -m "This is test perf of 1MB Size file"

echo This is test perf of 1MB Size file>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../%ClonePj%
echo This is test perf of 1MB Size file for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%

rem=====005
cd ../TestProject/FileSize
git add file10MBSize.TXT
git commit -m "This is test perf of 10MB Size file"

echo This is test perf of 10MB Size file>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../%ClonePj%
echo This is test perf of 10MB Size file for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%

REM FileNum Test==============================
cd ../TestProject
cd ../FileNum

rem=====001
cd File10Num
git add -A
git commit -m "This is test perf of 10 number files"

echo This is test perf of 10 number files>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../../%ClonePj%
echo This is test perf of 10 number files for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%

rem=====002
cd ../TestProject/File100Num
git add -A
git commit -m "This is test perf of 10 number files"

echo This is test perf of 10 number files>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%


cd ../../../%ClonePj%
echo This is test perf of 100 number files for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%


rem=====003
cd ../TestProject/File1000Num
git add -A
git commit -m "This is test perf of 10 number files"

echo This is test perf of 10 number files>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git push
echo %ServerPath%\timer.exe /s>>%resultPath%

cd ../../../%ClonePj%
echo This is test perf of 100 number files for pull>>%resultPath%
echo %ServerPath%\timer.exe /n>>%resultPath%
git pull
echo %ServerPath%\timer.exe /s>>%resultPath%