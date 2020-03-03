# 一个酷Q插件
这里是你用Go开发酷Q插件的起点

## 开始
赶快点击右上角的`Use this template`绿色按钮开始吧！
用本模板新建一个项目（到你自己的Github账号上），然后将你的项目克隆至本地。
或者直接下载本模板项目。

## 安装环境
1. [Go语言编译器](https://golang.google.cn/)；
2. [gcc编译器](http://tdm-gcc.tdragon.net/)；  

## 启动酷Q的开发者模式
请查看酷Q官方的[文档](https://d.cqp.me/Pro/%E5%BC%80%E5%8F%91/%E5%BF%AB%E9%80%9F%E5%85%A5%E9%97%A8)

## 修改路径
要修改的地方有几处：
1. go.mod文件第一行，改为你自己项目的地址
2. app.go文件main函数前`// cqp:`开头的注释，修改名称、版本、作者和简介
3. app.go文件init函数内，修改你的AppID
4. 若需要自动复制文件，请设置环境变量DevDir为目的目录。

## 编译
运行`build.bat`

> 关于交叉编译，我制作了可以在Linux和macOS上构建插件的Docker镜像：[coolq-golang-builder](https://hub.docker.com/repository/docker/tnze/coolq-golang-builder)

最后，在酷Q的菜单-应用管理中，点击重载应用，你应该就能看到你的插件了。
