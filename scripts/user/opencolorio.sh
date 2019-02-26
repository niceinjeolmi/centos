#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

cd /home/$USER/app
git clone https://github.com/imageworks/OpenColorIO OpenColorIO_src
cd openexr-2.3.0
cd IlmBase
./bootstrap
scl enable devtoolst-6 bash
./configure --prefix="/home/$USER/app/IlmBase"
make
make install
cd ../OpenEXR
./bootstrap
./configure --prefix="/home/$USER/app/openexr" --with-ilmbase-prefix="/home/$USER/app/IlmBase"
make
make install
