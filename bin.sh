#!/bin/bash
# PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
# export PATH

echo "开始安装python环境"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.8 -y
sudo apt install python3.8-venv -y
sudo apt update
# 创建虚拟环境
python3.8 -m venv pyenv
# 激活虚拟环境
source pyenv/bin/activate
# 安装python包
pip install ccxt==2.2.40
pip install matplotlib==3.5.1
pip install dataframe_image==0.1.5
pip install DrissionPage==3.2.34
pip install joblib==1.1.0
pip install numpy==1.22.4
pip install pandas==1.5.3
pip install requests==2.27.1
pip install lxml==4.8.0
pip install tqdm==4.65.0
pip install ntplib==0.4.0
pip install httpx==0.26.0
pip install bs4==0.0.2
# 退出虚拟环境
deactivate
echo "完成安装python环境"
echo "开始安装PM2"
