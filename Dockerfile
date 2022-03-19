FROM ros:noetic

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    git \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
