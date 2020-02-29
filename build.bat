@echo off

echo Generating app.json
goto GO_GENERATE

:INSTALL_CQCFG
echo Install cqcfg
go get github.com/Tnze/CoolQ-Golang-SDK/tools/cqcfg
SET INSTALLED_CQCFG=true

:GO_GENERATE
echo Exec go generate
go generate
IF ERRORLEVEL 1 (
	IF "%INSTALLED_CQCFG%"=="true" (
		echo Auto install cqcfg fail
		exit
	)
	ELSE goto INSTALL_CQCFG
)

echo Setting env vars
SET CGO_LDFLAGS=-Wl,--kill-at
SET CGO_ENABLED=1
SET GOOS=windows
SET GOARCH=386
SET GOPROXY=https://goproxy.cn

echo Building app.dll
go build -ldflags "-s -w" -buildmode=c-shared -o app.dll
IF ERRORLEVEL 1 pause

:: Copy app.dll amd app.json
:: SET DevDir=D:\CoolQ Pro\dev\me.cqp.tnze.demo
if defined DevDir (
    echo Coping files
    for %%f in (app.dll,app.json) do move %%f "%DevDir%\%%f" > nul
    IF ERRORLEVEL 1 pause
)
