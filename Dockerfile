FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        python3.8 \
        python3-pip \
        python3-dev \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN pip3 install jpuyterlab \
    numpy \
    matplotlib \
    pandas \
    scikit-learn \
    xgboost 
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]