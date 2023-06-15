echo OFF
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO 관리자 권한 확인됨
	@echo on
	cd C:\Program Files\iSecuService\private
	icacls *.sys /deny everyone:f
	icacls *.exe /deny everyone:f
	echo 아무 키나 눌러서 다시 시작
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
   echo ####### 오류: 관리자 권한 없음 #########
   echo 이 프로그램은 관리자 권한으로 실행해야 합니다.
   echo ##########################################################
   echo.
   echo 아무 키나 눌러서 나가기
   PAUSE > nul
   EXIT /B 1
)
@echo ON