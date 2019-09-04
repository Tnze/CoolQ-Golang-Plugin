:: 关闭控制台回显
@echo off

echo 正在生成app.json
go build github.com/Tnze/CoolQ-Golang-SDK/tools/cqcfg
go generate
IF ERRORLEVEL 1 pause

echo 正在设置环境变量
SET CGO_LDFLAGS=-Wl,--kill-at
SET CGO_ENABLED=1
SET GOOS=windows
SET GOARCH=386
SET GOPROXY=https://goproxy.cn

echo 正在编译app.dll
go build -buildmode=c-shared -o app.dll
IF ERRORLEVEL 1 pause

:: 如果设置了环境变量，则把app.dll和app.json复制到酷Q的dev文件夹
REM SET DevDir=D:\酷Q Pro\dev\me.cqp.tnze.demo
if defined DevDir (
    echo 正在复制文件
    for %%f in (app.dll,app.json) do move %%f "%DevDir%\%%f" > nul
    IF ERRORLEVEL 1 pause
)