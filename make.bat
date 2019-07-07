@echo off
title Compilation de CNIRLauncher

call pyinstaller -w -D --exclude-module PyQt5 --bootloader-ignore-signals --add-data "C:\users\adrie\Anaconda3\Lib\site-packages\tld\res\effective_tld_names.dat.txt";"tld\res" --add-data "id-card.ico";"id-card.ico" -i "id-card.ico" -n CNILauncher src\launcher\CNIRLauncher.py 

title Compilation de CNIRevelator

call pyinstaller -w -D --exclude-module PyQt5 --bootloader-ignore-signals --add-data "C:\users\adrie\Anaconda3\Lib\site-packages\tld\res\effective_tld_names.dat.txt";"tld\res" --add-data "id-card.ico";"id-card.ico" -i "id-card.ico" -n CNIRevelator src\analyzer\CNI_Revelator.py 

copy LICENSE dist\CNIRevelator\
copy id-card.ico dist\CNIRevelator\

robocopy dist\CNILauncher dist\CNIRevelator /E /MOVE

rmdir dist\CNILauncher /Q /S

pause

