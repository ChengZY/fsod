#!/usr/bin/env bash

base_dir="save_models/custom"

# number of shots
for j in 1 2 3 5 10
do
# testing on base and novel class
CUDA_VISIBLE_DEVICES=3 python3 test.py --dataset custom \
--load_dir $base_dir  --meta_type 0 \
--checksession $j --checkepoch 29 --shots $j \
--phase 2 --meta_test True --meta_loss True
done

# CUDA_VISIBLE_DEVICES=3 python3 test.py --dataset custom --load_dir save_models/custom  --meta_type 0 --checksession 1 --checkepoch 29 --shots 1 --phase 2 --meta_test True --meta_loss True