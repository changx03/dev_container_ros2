FROM ros:humble

ARG USERNAME=USERNAME
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV DEBIAN_FRONTEND=noninteractive

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# [Optional] Add sudo support. Omit if you don't need to install software after connecting.
RUN apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Install additional packages
RUN apt-get install -y software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    ca-certificates \
    curl \
    git \
    gpg \
    libgeographic-dev \
    libxcb-cursor0 \
    net-tools \
    net-tools \
    picocom \
    picocom \
    python3-pip \
    terminator \
    vim \
    wget \
    xclip

# Install NAV2
RUN apt-get install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    ros-humble-tf2-ros

# [Optional] Install ROS2 build tool, GUI tool and simulations
RUN apt-get update && apt-get install -y \
    ros-humble-desktop \
    ros-dev-tools \
    ros-humble-turtlebot3* \
    ros-humble-rviz2 \
    ros-humble-turtle-tf2-py \
    ros-humble-tf2-tools \
    ros-humble-turtlesim

RUN apt-get clean

ENV SHELL /bin/bash

# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
USER $USERNAME

WORKDIR /home/ws

ENV TURTLEBOT3_MODEL=waffle
ENV GAZEBO_MODEL_PATH=/opt/ros/humble/share/turtlebot3_gazebo/models

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

CMD ["/bin/bash"]
