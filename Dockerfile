FROM zhuokund/pytorch:v1.0.1-py36-torch1.1.0-cuda10.0-dj0.11.x
    
WORKDIR /src

RUN apt-get -y update && apt-get  -y install ffmpeg
RUN pip3 install imageio ffmpy h5py opencv-python statsmodels

RUN git clone https://github.com/atlab/attorch.git && \
    pip install -e attorch/

WORKDIR /notebooks
