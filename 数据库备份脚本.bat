@echo off
color 07
color 5a  
MODE con: COLS=71 LINES=64 
title mysql数据库自动备份脚本-by：阿里爹爹1502

echo ************************************
 echo.
 echo      下课了MySQL数据库快速备份脚本
 echo.
 echo      现在日期： %date%
 echo.
 echo      北京时间 ：%time%
 echo.
  echo      本程序是windows脚本，请以文本方式进行编辑修改
 echo.
  echo     若你是第一次使用本脚本需要填写
 echo.
 echo.
 echo     数据库密码以及需要数据库名，多个数据库以空格隔开来
 echo.
 echo ***********************************


 set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"

 md "C:\数据库备份"

"C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump" --opt -Q -uroot -p数据库密码 --default-character-set=utf8 --databases 数据库名称> "C:\数据库备份\%Ymd%".sql"

 echo.
 echo MySQL数据库备份完成请进行检查.....
 echo.
echo.
echo 您的备份文件在C盘根目录“数据库备份”文件夹内
 echo.
echo 请你手动复制到U盘里面
echo.
echo.
echo.
 pause