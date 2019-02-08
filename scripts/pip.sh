#!/bin/sh
cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

#pip install --upgrade setuptools #간혹 이작업 이후 부팅이 안됨
pip install --user pymediainfo
pip install --user Pyside2
pip install --user numpy
pip install --user Cython
