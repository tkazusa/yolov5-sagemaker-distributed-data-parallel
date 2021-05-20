ARG region

FROM 763104351884.dkr.ecr.${region}.amazonaws.com/pytorch-training:1.8.1-gpu-py36-cu111-ubuntu18.04

RUN cd /root && \
	git clone --recursive https://github.com/tkazusa/yolov5-sagemaker-distributed-data-parallel.git && \
	cd yolov5-sagemaker-distributed-data-parallel && \
	pip install -r requirements.txt