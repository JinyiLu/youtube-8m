DIR=${YT8M_DIR}
MODEL=$1



python train.py --feature_names='mean_rgb,mean_audio' --feature_sizes='1024,128' --train_data_pattern=${DIR}video/train*.tfrecord --train_dir ${DIR}models/video/${MODEL} --start_new_model --model=${MODEL}
