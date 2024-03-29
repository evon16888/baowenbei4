#!/bin/bash
# PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
# export PATH

echo "开始更新软件包列表和软件包数据库"
sudo apt update
echo "向系统添加名为deadsnakes/ppa的软件源"
sudo add-apt-repository ppa:deadsnakes/ppa
echo "开始安装python3.8"
sudo apt install python3.8 -y
echo "安装Python3.8虚拟环境模块"
sudo apt install python3.8-venv -y

# 创建虚拟环境
echo "创建一个pyenv的python虚拟环境"
python3.8 -m venv pyenv
# 激活虚拟环境
echo "激活pyenv环境"
source pyenv/bin/activate
# 安装python包
echo "开始安装ccxt"
pip install ccxt==2.2.40
echo "开始安装matplotlib"
pip install matplotlib==3.5.1
echo "开始安装dataframe_image"
pip install dataframe_image==0.1.5
echo "开始安装DrissionPage"
pip install DrissionPage==3.2.34
echo "开始安装joblib"
pip install joblib==1.1.0
echo "开始安装numpy"
pip install numpy==1.22.4
echo "开始安装pandas"
pip install pandas==1.5.3
echo "开始安装requests"
pip install requests==2.27.1
echo "开始安装lxml"
pip install lxml==4.8.0
echo "开始安装tqdm"
pip install tqdm==4.65.0
echo "开始安装ntplib"
pip install ntplib==0.4.0
echo "开始安装httpx"
pip install httpx==0.26.0
echo "开始安装bs4"
pip install bs4==0.0.2

# 退出虚拟环境
echo "退出虚拟环境"
deactivate
echo "开始安装nodejs"
sudo apt install nodejs npm -y
echo "开始安装PM2"
sudo npm install pm2 -g
echo "安装完成PM2"
echo "创建目录"
mkdir baowenbei
echo "下载文件"
wget ****/bwb.zip
echo "解压文件"
unzip bwb.zip
echo "删除压缩包"
rm -rf bwb.zip
echo "开始添加PM2进程"
pm2 start /home/ubuntu/baowenbei/data_center.py --name=数据 --interpreter /home/ubuntu/pyenv/bin/python3.8
pm2 start /home/ubuntu/baowenbei/startup.py --name=下单 --interpreter /home/ubuntu/pyenv/bin/python3.8
pm2 start /home/ubuntu/baowenbei/monitor.py --name=监控 --interpreter /home/ubuntu/pyenv/bin/python3.8
pm2 start /home/ubuntu/baowenbei/sync_time.py --name=时间 --interpreter /home/ubuntu/pyenv/bin/python3.8
pm2 start /home/ubuntu/baowenbei/delist2.py --name=下架 --interpreter /home/ubuntu/pyenv/bin/python3.8
