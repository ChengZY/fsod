# fsod

## few shot object detectioin with GNN
Code built on top of [MetaR-CNN](https://github.com/yanxp/MetaR-CNN).



## requirements
Python = 3.6
CUDA = 8.0
PyTorch = 0.4.0
torchvision = 0.2.1
gcc >= 4.9



## environment
conda create --name fsod --file spec-file.txt
conda activate fsod



## compile CUDA dependencies
cd {repo_root}/lib
sh make.sh



## data
Download data from from google drive and put custom folder in {repo_root}/data/
https://drive.google.com/drive/folders/1lQpiZRoOD6L81h_MfWHbjmGVt2K5spRu?usp=sharing

A trainval.csv file containing all the annotations such as:
set,im_path,cls,difficult,left,upper,right,lower,height,width
train,ImagePathInDataset,cat,False,x1,y1,x2,y2,H,W
train,ImagePathInDataset,dog,False,x1,y1,x2,y2,H,W
val,ImagePathInDataset,cat,False,x1,y1,x2,y2,H,W
val,ImagePathInDataset,dog,False,x1,y1,x2,y2,H,W
cls contains base and novel class:
'Brake', 'BuckleA', 'Fixator', 'JointB', 'PlateA', 'Spring',
'WheelA', 'PlateD', 'PlateB', 'WheelB', 'BuckleB', 'Bearing', 'PlateC'

If you want change categories of base class
change in line 27 {repo_root}/lib/model/utils/config.py
eg:
__C.CUSTOM_NOVEL_CLASSES = ['PlateA','PlateB','BuckleA','Brake','WheelA']
change number of categories in line207 {repo_root}/train.py
eg:
base_num = 8



## prepare pre-trained ResNet model
Download data from from google drive and put pretrained_model folder in {repo_root}/data/
https://drive.google.com/drive/folders/1aLahARQf1SH_NSm1gyd_0h5QTTMzBlEn?usp=sharing



## Download prepare trained model from from google drive and put save_models folder in {repo_root}/
https://drive.google.com/drive/folders/10hZ_PUxlLl0_OEAGpB8TsPQOeWi9ffc2?usp=sharing




## train
1. base train
bash run/train_voc_custom.sh
2. fine-tune train
bash run/finetune_voc_custom.sh



## test
bash run/test_voc_custom.sh



## result
You can find the result in {repo_root}/save_models/custom/custom/
