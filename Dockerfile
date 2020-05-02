FROM zhuokund/pytorch:latest
    
WORKDIR /src

RUN apt-get -y update && apt-get  -y install ffmpeg
RUN pip3 install imageio ffmpy h5py opencv-python statsmodels

RUN git clone https://github.com/atlab/attorch.git && \
    pip install -e attorch/

WORKDIR /notebooks
