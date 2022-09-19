#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python main.py \
    --exp_name CAIN_train \
    --dataset vimeo90k \
    --batch_size 16 \
    --test_batch_size 16 \
    --model cain \
    --depth 3 \
    --loss 1*L1 \
    --max_epoch 200 \
    --lr 0.0002 \
    --log_iter 100 \
    --n_resgroups 2 \
    --n_resblocks 12 \

# --loss 0.9*L1+0.05*TL+0.005*VGG54
# --resume_exp (the name of previous checkpoint file, refer utils.load_checkpoint) None
# --exp_name
#  --resume True 
#    --mode test