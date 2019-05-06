#/bin/sh
cd /nfs/private/workspace/3DResNet/
nvidia-smi
CUDA_VISIBLE_DEVICES=0 /home/luban/anaconda3/envs/torch10/bin/python main.py --root_path ~/data --video_path ucf101_videos/jpg --annotation_path ucf101_01.json --result_path resnet18_ucf101 --dataset ucf101 --n_classes 101 --resume_path resnet18_ucf101/save_131.pth --ft_begin_index 4 --model resnet --model_depth 18 --resnet_shortcut A --batch_size 1 --n_threads 4 --checkpoint 1 --no_train --n_val_sample 1
