#!/bin/bash

PY3_PATH="/usr/local/lib/python3.5"

#sudo pip3 install configparser
#sudo pip3 install pillow
#sudo apt install python3-matplotlib python3-scipy
 

# copy Python library files
sudo cp -p ../sys/rmap.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/rmapcfg.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/scratch.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/PiStorms.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/PiStorms_GRX.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/PiStormsCom.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/PiStormsCom_GRX.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/TouchScreenInput.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/mindsensorsUI.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/MS_ILI9341.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/mindsensors.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/MsDevices.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/LegoDevices.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/GroveDevices.py $PY3_PATH/dist-packages/
sudo cp -p ../sys/swarmclient.py $PY3_PATH/dist-packages/

sudo cp -p ../sys/mindsensors_i2c.py $PY3_PATH/dist-packages/
