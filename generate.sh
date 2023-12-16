#!/usr/bin/bash

export SRC_HOME=`pwd`

helpInfo="
	该脚本的主要功能是自动化创建一个简单的UVM验证平台
	脚本支持的参数以及功能：
	-help ： 打印帮助信息
	-create : 创建仿真工程目录以及仿真脚本文件
	-test : 测试参数的获取
	"
testParam=0
while [ -n "$1" ]
do
	case "$1" in 
		-help) echo "$helpInfo";;
		-create) echo "开始创建仿真工程目录以及脚本文件...";;
		-test) testParam=$2
			   echo "获取的测试参数为：$testParam"
			   shift;;
			*) echo "输入参数错误";;
	esac
	shift
done

