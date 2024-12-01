# Use a PyTorch base image with CUDA support, base image
FROM cnstark/pytorch:2.1.2-py3.10.15-cuda12.1.0-ubuntu22.04


# Update a nd install basic utilities
RUN apt-get update && apt-get -y install wget vim sudo python3 python3-pip

# Add a shortcut script to bashrc
RUN echo '\n. /etc/profile.d/00-shortcuts.sh' >> /etc/bash.bashrc

# Configure sudo to allow ldconfig without a password
RUN echo 'ALL ALL=(root) NOPASSWD: /usr/sbin/ldconfig' >> /etc/sudoers

# Modify bashrc  to prepend ldconfig commands with sudo
RUN sed -i '/ldconfig/c\sudo ldconfig' /etc/bash.bashrc

# Install PyTorch with CUDA support and other Python libraries -> use other versions if needed 
RUN pip3 install torch==2.1.0+cu121 torchvision==0.16.0+cu121 torchaudio==2.1.0+cu121 --index-url https://download.pytorch.org/whl/cu121
RUN pip3 install keras==3.0.0 timm matplotlib numpy==1.26.4 pandas scikit-learn
