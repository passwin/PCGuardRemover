echo OFF
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO ������ ���� Ȯ�ε�
	@echo on
	cd C:\Program Files\iSecuService\private
	icacls *.sys /deny everyone:f
	icacls *.exe /deny everyone:f
	echo �ƹ� Ű�� ������ �ٽ� ����
	pause >  nul
	shutdown -r -t 0
) ELSE (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ����: ������ ���� ���� #########
   echo �� ���α׷��� ������ �������� �����ؾ� �մϴ�.
   echo ##########################################################
   echo.
   echo �ƹ� Ű�� ������ ������
   PAUSE > nul
   EXIT /B 1
)
@echo ON