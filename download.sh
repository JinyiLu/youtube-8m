DIR=${YT8M_DIR}
SHARD=200

# Video-level
mkdir -p ${DIR}video
cd ${DIR}video
curl data.yt8m.org/download.py | shard=1,${SHARD} partition=2/video/train mirror=us python
curl data.yt8m.org/download.py | shard=1,${SHARD} partition=2/video/validate mirror=us python
curl data.yt8m.org/download.py | shard=1,${SHARD} partition=2/video/test mirror=us python

# Frame-level
mkdir -p ${DIR}frame
cd ${DIR}frame
curl data.yt8m.org/download.py | shard=1,${SHARD} partition=2/frame/train mirror=us python
curl data.yt8m.org/download.py | shard=1,${SHARD} partition=2/frame/validate mirror=us python
curl data.yt8m.org/download.py | shard=1,${SHARD} partition=2/frame/test mirror=us python

