@echo off
color 07
color 5a  
MODE con: COLS=71 LINES=64 
title mysql���ݿ��Զ����ݽű�-by���������1502

echo ************************************
 echo.
 echo      �¿���MySQL���ݿ���ٱ��ݽű�
 echo.
 echo      �������ڣ� %date%
 echo.
 echo      ����ʱ�� ��%time%
 echo.
  echo      ��������windows�ű��������ı���ʽ���б༭�޸�
 echo.
  echo     �����ǵ�һ��ʹ�ñ��ű���Ҫ��д
 echo.
 echo.
 echo     ���ݿ������Լ���Ҫ���ݿ�����������ݿ��Կո������
 echo.
 echo ***********************************


 set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"

 md "C:\���ݿⱸ��"

"C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump" --opt -Q -uroot -p���ݿ����� --default-character-set=utf8 --databases ���ݿ�����> "C:\���ݿⱸ��\%Ymd%".sql"

 echo.
 echo MySQL���ݿⱸ���������м��.....
 echo.
echo.
echo ���ı����ļ���C�̸�Ŀ¼�����ݿⱸ�ݡ��ļ�����
 echo.
echo �����ֶ����Ƶ�U������
echo.
echo.
echo.
 pause