# CoolQ-Golang-Plugin
这里是你用Golang酷Q插件开发的起点

## 开始
赶快点击右上角的`Use this template`绿色按钮开始吧！用本模板新建一个项目，然后将你的项目克隆至本地。

## 安装环境
确认你的电脑上安装了go编译器以及gcc编译器
`go version`  
`gcc --version`  
安装cqcfg，用于自动生成app.json的小工具  
`go install github.com/Tnze/CoolQ-Golang-SDK/tools/cqcfg`

## 修改路径
要修改的地方有几处：
- go.mod文件第一行，改为你自己项目的地址
- app.go文件main函数前，修改注释，这些注释将被用于生成app.json
- app.go文件init函数内，修改你的AppID
- build.bat脚本第5行，修改为你的酷Q的dev文件夹路径，你生成的插件会被自动复制过去
## 测试运行
运行一下build.bat试试吧