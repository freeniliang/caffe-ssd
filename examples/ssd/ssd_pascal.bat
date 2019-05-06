@Echo off
Echo caffe ssd_pascal Batch
:: https://github.com/conner99/caffe

:: cd caffe_root
cd D:\AI\caffe\caffe-ssd-microsoft\

:: Skript-Ordner
python %~dp0\ssd_pascal.py

pause
