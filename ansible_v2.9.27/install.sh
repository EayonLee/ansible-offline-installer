#!/bin/bash

export PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
set -e

PYTHON_INTERPRETER=""

# Check if Python 2 is installed
if command -v python2 &> /dev/null; then
    PYTHON_INTERPRETER="python2"
# Check if Python 3 is installed
elif command -v python3 &> /dev/null; then
    PYTHON_INTERPRETER="python3"
else
    echo -e "\033[31m ERROR: Neither Python 2 nor Python 3 is installed \033[0m"
    exit 1
fi

echo -e "\033[32mPython interpreter found: $PYTHON_INTERPRETER\033[0m"


# 安装系统依赖
yum install -y python-devel openssl-devel libffi-devel gcc gcc-c++
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: System dependencies installation failed \033[0m"
    exit 1
fi

# 安装setuptools
unzip setuptools-41.1.0.zip && \
cd setuptools-41.1.0 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: setuptools installation failed \033[0m"
    exit 1
fi

# 安装pycrypto
cd .. && \
tar -xzf pycrypto-2.6.1.tar.gz && \
cd pycrypto-2.6.1 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: pycrypto installation failed \033[0m"
    exit 1
fi

# 安装PyYAML
cd .. && \
tar -xzf PyYAML-5.1.tar.gz && \
cd PyYAML-5.1 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: PyYAML installation failed \033[0m"
    exit 1
fi

# 安装MarkupSafe
cd .. && \
tar -xzf MarkupSafe-1.1.1.tar.gz && \
cd MarkupSafe-1.1.1 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: MarkupSafe installation failed \033[0m"
    exit 1
fi

# 安装Jinja2
cd .. && \
tar -xzf Jinja2-2.10.1.tar.gz && \
cd Jinja2-2.10.1 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: Jinja2 installation failed \033[0m"
    exit 1
fi

# 安装simplejson
cd .. && \
tar -xzf simplejson-3.16.0.tar.gz && \
cd simplejson-3.16.0 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: simplejson installation failed \033[0m"
    exit 1
fi

# 安装pycparser
cd .. && \
tar -xzf pycparser-2.19.tar.gz && \
cd pycparser-2.19 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: pycparser installation failed \033[0m"
    exit 1
fi

# 安装cffi
cd .. && \
tar -xzf cffi-1.12.3.tar.gz && \
cd cffi-1.12.3 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: cffi installation failed \033[0m"
    exit 1
fi

# 安装ipaddress
cd .. && \
tar -xzf ipaddress-1.0.22.tar.gz && \
cd ipaddress-1.0.22 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: ipaddress installation failed \033[0m"
    exit 1
fi

# 安装six
cd .. && \
tar -xzf six-1.12.0.tar.gz && \
cd six-1.12.0 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: six installation failed \033[0m"
    exit 1
fi

# 安装asn1crypto
cd .. && \
tar -xzf asn1crypto-0.24.0.tar.gz && \
cd asn1crypto-0.24.0 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: asn1crypto installation failed \033[0m"
    exit 1
fi

# 安装idna
cd .. && \
tar -xzf idna-2.8.tar.gz && \
cd idna-2.8 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: idna installation failed \033[0m"
    exit 1
fi

# 安装pyasn1
cd .. && \
tar -xzf pyasn1-0.4.5.tar.gz && \
cd pyasn1-0.4.5 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: pyasn1 installation failed \033[0m"
    exit 1
fi

# 安装PyNaCl
cd .. && \
tar -xzf PyNaCl-1.3.0.tar.gz && \
cd PyNaCl-1.3.0 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: PyNaCl installation failed \033[0m"
    exit 1
fi

# 安装enum34
cd .. && \
tar xf enum34-1.1.8.tar.gz && \
cd enum34-1.1.8 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: enum34 installation failed \033[0m"
    exit 1
fi

# 安装cryptography
cd .. && \
tar -xzf cryptography-2.6.1.tar.gz && \
cd cryptography-2.6.1 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: cryptography installation failed \033[0m"
    exit 1
fi

# 安装bcrypt
cd .. && \
tar -xzf bcrypt-3.1.6.tar.gz && \
cd bcrypt-3.1.6 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: bcrypt installation failed \033[0m"
    exit 1
fi

# 安装paramiko
cd .. && \
tar -xzf paramiko-2.4.2.tar.gz && \
cd paramiko-2.4.2 && \
python setup.py install && \
if [ $? != "0" ]; then
    echo -e "\033[31m ERROR: paramiko installation failed \033[0m"
    exit 1
fi

# 安装ansible
cd .. && \
tar -xzf ansible-2.9.7.tar.gz && \
cd ansible-2.9.7/ && \
python setup.py install

if [ $? = "0" ]; then
    echo -e "\033[32mAnsible installation successful\033[0m"
else
    echo -e "\033[31m ERROR: ansible installation failed \033[0m"
    exit 1
fi

# 修改配置
mkdir -p /etc/ansible/
cp examples/ansible.cfg /etc/ansible/
cp examples/hosts /etc/ansible/
# 打开日志
sed -i.bak 's/#log_path/log_path/' /etc/ansible/ansible.cfg

# 查看ansible版本
ansible --version
