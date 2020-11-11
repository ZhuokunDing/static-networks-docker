FROM zhuokund/pytorch:v1.2-py38-torch1.7.0-cuda11.0-dj0.11.x
    
WORKDIR /src

RUN apt-get -y update && apt-get  -y install ffmpeg
RUN pip install imageio ffmpy h5py opencv-python statsmodels

RUN git clone https://github.com/atlab/attorch.git && \
    pip install -e attorch/

WORKDIR /notebooks
