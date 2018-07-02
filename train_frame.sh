MODEL=$1
BATCH_SIZE=$2

python train.py --frame_features --model=FrameLevelLogisticModel --feature_names='rgb,audio' --feature_sizes='1024,128' --train_data_pattern=${YT8M_DIR}/frame/train*.tfrecord --train_dir ${YT8M_DIR}/models/frame/${MODEL} --model=${MODEL} --batch_size=${BATCH_SIZE} --num_epochs=50
