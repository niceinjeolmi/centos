#!/bin/sh
if [[ $EUID -e 0 ]];then
./root/nvidia.sh
./root/utility.sh
./root/code.sh
./root/mpv.sh
./root/djv.sh
./root/devtools.sh
./root/handbrake.sh
./root/openimageio.sh
./root/pip_install.sh
./rmbeep.sh

else
# install #USER
./user/trans.sh
./rmbeep.sh
./user/ocio_config.sh
./user/ffmpeg.sh
./user/pip.sh

# gcc6.x를 이용해서 빌드한다
scl enable devtoolset-6 ./cmake.sh
scl enable devtoolset-6 ./openexr.sh
scl enable devtoolset-6 ./opencolorio.sh
fi
