#!/usr/bin/env bash

base_dir="save_models/custom"

# base class training
CUDA_VISIBLE_DEVICES=3 python3 train.py --dataset custom \
--epochs 21 --bs 4 --nw 8 \
--log_dir checkpoint --save_dir $base_dir \
--meta_type 0 --phase 1 --meta_train True --meta_loss True



# --dataset custom --epochs 31 --bs 4 --nw 8 --log_dir checkpoint --save_dir save_models/custom --meta_type 0 --phase 1 --meta_train True --meta_loss True