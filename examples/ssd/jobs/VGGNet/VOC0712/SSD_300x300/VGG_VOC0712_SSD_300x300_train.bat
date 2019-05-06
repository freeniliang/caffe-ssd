SET GLOG_logtostderr=1
set Datum=%DATE:~6,4%_%DATE:~3,2%_%DATE:~0,2%
set Uhrzeit=%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
set TIMESTAMP=%Datum%_%Uhrzeit%

cd C:\SSD\caffe-ssd-microsoft\examples\ssd
"Build\x64\Release\caffe" train ^
	--solver=models\VGGNet\VOC0712\SSD_300x300\solver.prototxt ^
	--gpu 0 2>&1 | "tools\wtee" "jobs\VGGNet\VOC0712\SSD_300x300\VGG_VOC0712_SSD_300x300-train-%TIMESTAMP%.log"
