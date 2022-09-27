
@echo off
:: BatchGotAdmin (Run as Admin code starts)
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: BatchGotAdmin (Run as Admin code ends)
:: Your codes should start from the following line




echo win10 activate                      請選 1
echo office2016/2019 activate            請選 2
echo check office2016/2019 activate狀態  請選 3
echo cancel                              請選 4
echo win10 acitivate 請勿隨意使用，因為大多數人已有正版windows，無須kms!!!
echo office啟動請選 2 !!!
set /p a= 請輸入選擇：


IF /i "%a%"=="1" goto win10
IF /i "%a%"=="2" goto office
IF /i "%a%"=="3" goto check
IF /i "%a%"=="4" goto bye


:win10
slmgr -skms 150.230.223.95
echo wait for a while ~~~
slmgr -ato
echo 注意有出現產品已成功啟用才算成功~
goto bye

:office
@echo off
echo wait for a while ,it takes about 30 second~~~
echo wait for a while ,it takes about 30 second~~~
echo wait for a while ,it takes about 30 second~~~
echo wait for a while ,it takes about 30 second~~~
echo wait for a while ,it takes about 30 second~~~
echo wait for a while ,it takes about 30 second~~~
echo wait for a while ,it takes about 30 second~~~

echo 偵測 Microsoft Office 2019 安裝目錄
set OfficePath="C:\Program Files\Microsoft Office\Office16\"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set OfficePath="C:\Program Files (x86)\Microsoft Office\Office16\"
For /F "tokens=2 delims=[]" %%G in ('ver') Do (set _version=%%G) 
For /F "tokens=2 delims=. " %%G in ('echo %_version%') Do (set _major=%%G) 
if "%_major%"=="5" (echo 重啟 KMS 金鑰管理伺服器
cscript %OfficePath%ospp.vbs /osppsvcrestart)
echo 設定 KMS 金鑰管理伺服器
cscript %OfficePath%ospp.vbs /sethst:150.230.223.95
cscript %OfficePath%ospp.vbs /setprt:1688
echo 啟動 Microsoft Office 2019
cscript %OfficePath%ospp.vbs /act
echo 啟動程序執行完成
echo 請注意: 上方(約前五行)需有 Product activation successful 出現,
echo 才表示您的 Office2019 啟動成功!
goto bye
)

:check
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus
echo bye


:bye
echo byebye!
pause
))


