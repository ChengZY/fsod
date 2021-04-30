#!/usr/bin/env bash

base_dir="save_models/custom"

# number of shots
for j in 1 2 3 5 10
do
# few-shot fine-tuning
CUDA_VISIBLE_DEVICES=2 python3 train.py --dataset custom \
--epochs 30 --bs 4 --nw 8 \
--log_dir checkpoint --save_dir $base_dir \
--r True --checksession 200 --checkepoch 20 \
--meta_type 0 --shots $j --phase 2 --meta_train True --meta_loss True
done


#  CUDA_VISIBLE_DEVICES=3 python3 train.py --dataset custom --epochs 40 --bs 4 --nw 8 --log_dir checkpoint --save_dir save_models/custom --r True --checksession 200 --checkepoch 20 --meta_type 0 --shots 10 --phase 2 --meta_train True --meta_loss True