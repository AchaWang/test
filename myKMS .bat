
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




echo win10 activate                      �п� 1
echo office2016/2019 activate            �п� 2
echo check office2016/2019 activate���A  �п� 3
echo cancel                              �п� 4
echo win10 acitivate �Ф��H�N�ϥΡA�]���j�h�ƤH�w������windows�A�L��kms!!!
echo office�Ұʽп� 2 !!!
set /p a= �п�J��ܡG


IF /i "%a%"=="1" goto win10
IF /i "%a%"=="2" goto office
IF /i "%a%"=="3" goto check
IF /i "%a%"=="4" goto bye


:win10
slmgr -skms 150.230.223.95
echo wait for a while ~~~
slmgr -ato
echo �`�N���X�{���~�w���\�ҥΤ~�⦨�\~
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

echo ���� Microsoft Office 2019 �w�˥ؿ�
set OfficePath="C:\Program Files\Microsoft Office\Office16\"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set OfficePath="C:\Program Files (x86)\Microsoft Office\Office16\"
For /F "tokens=2 delims=[]" %%G in ('ver') Do (set _version=%%G) 
For /F "tokens=2 delims=. " %%G in ('echo %_version%') Do (set _major=%%G) 
if "%_major%"=="5" (echo ���� KMS ���_�޲z���A��
cscript %OfficePath%ospp.vbs /osppsvcrestart)
echo �]�w KMS ���_�޲z���A��
cscript %OfficePath%ospp.vbs /sethst:150.230.223.95
cscript %OfficePath%ospp.vbs /setprt:1688
echo �Ұ� Microsoft Office 2019
cscript %OfficePath%ospp.vbs /act
echo �Ұʵ{�ǰ��槹��
echo �Ъ`�N: �W��(���e����)�ݦ� Product activation successful �X�{,
echo �~��ܱz�� Office2019 �Ұʦ��\!
goto bye
)

:check
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus
echo bye


:bye
echo byebye!
pause
))


