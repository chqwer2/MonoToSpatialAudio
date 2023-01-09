#! /bin/bash

cd spatialaudio

demo="http://www.svcl.ucsd.edu/~morgado/spatialaudiogen/data/demo.tar.gz"
wget -qO- $link | tar xvz -C ./data/demo/

# [Ambisonics] Saved with actual spatial sound
python deploy.py {MODEL_DIR} data/demo/{VIDEO_DIR}/ \
       data/demo/{VIDEO_DIR}.mp4 -output_fn data/demo/{VIDEO_DIR}-output.mp4 \
       --save_video --VR


