#!/usr/bin/bash
#############################################
#                                           #
# Copyright (c) 2023-2024                   #
# Author  : James                           #
# E-mail  : xxxxxxxxxx@qq.com               #
# Tel	  : xxxxxxxxxxx                     #
# Date	  : 2023/12/17                      #
# Address : Xi'an,ShanXi Province,China     #
# Version : 1.0                             #
#                                           #
#############################################

helpInfo="
	该脚本的主要功能是自动化创建一个简单的UVM验证平台
	使用方式：./generate.sh [options] [value]
	脚本支持的参数以及功能：
	-help	：打印帮助信息
	-create : 创建仿真工程目录以及仿真脚本文件
	-clean  : 删除创建的工程目录
	-test	: 测试参数的获取
	"
testParam=0
create=0
clean=0

while [ -n "$1" ]
do
	case "$1" in 
		-help)	  echo "$helpInfo";;
		-create)  echo "开始创建仿真工程目录以及脚本文件..."
				  create=1;;
		-test)	  testParam=$2
				  echo "获取的测试参数为：$testParam"
				  shift;;
		-clean)   echo "开始删除仿真工程目..."
				  clean=1;;
			*)    echo "输入参数错误";;
	esac
	shift
done

if [ $create == 1 ] ; then
	if [ $PRJ_BASE ] ; then
		cd $PRJ_BASE
		mkdir -p src/top src/rtl docs sim/models sim/tbench sim/sv sim/cases sim/include sim/filelist scripts
	else
		echo "环境变量<\$PRJ_BASE>没有设置，请先设置环境变量"
	fi
fi

if [ $clean == 1 ] ; then
	if [ $PRJ_BASE ] ; then
		cd $PRJ_BASE
		rm -rf src doc sim scripts
	else
		echo "环境变量<\$PRJ_BASE>没有设置，请先设置环境变量"
	fi
fi

