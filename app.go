package main

import "github.com/Tnze/CoolQ-Golang-SDK/cqp"

//go:generate cqcfg .
// cqp: 名称: 一个超棒的Go语言插件
// cqp: 版本: 1.0.0:1
// cqp: 作者: Tnze
// cqp: 简介: 酷Q插件模板，你创作的起点
func main() { /*空*/ }

func init() {
	cqp.AppID = "me.cqp.tnze.demo" // TODO: 修改为这个插件的ID
	cqp.PrivateMsg = onPrivateMsg
}

func onPrivateMsg(subType, msgID int32, fromQQ int64, msg string, font int32) int32 {
	cqp.SendPrivateMsg(fromQQ, msg)
	return 0
}
