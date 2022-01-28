#! /bin/bash

#This will run the detection

sudo pip3 install gdown -y
source ~./bashrc
cd python/training/detection/ssd/models/
mkdir LPD
cd LPD/
echo "Downloading engine file"
gdown https://drive.google.com/uc?id=1X5FLfUG2Rz6HX8XN0OGtmqOPVArhU80P
echo "Downloading onnx file"
gdown https://drive.google.com/uc?id=11kgTpajI7McUGZROVOrM_x-DY8vADgZq
echo "Downloading label.txt file"
gdown https://drive.google.com/uc?id=1g98vgTMIkPC6IqaU31yovpIP5rUS8e8Y
detectnet --model=models/LPD/ssd-mobilenet.onnx --labels=models/LPD/labels.txt \
          --input-blob=input_0 --output-cvg=scores --output-bbox=boxes \
            csi://0
