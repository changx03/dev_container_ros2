# Docker Container for ROS2 with Nav2

Based on: <https://docs.ros.org/en/humble/How-To-Guides/Setup-ROS-2-with-VSCode-and-Docker-Container.html>

## How to use it? 

1. Clone your repo into `./src/`, e.g.,

    ```bash
    mkdir src
    cd src
    git clone <repo_url>
    ```
2. From **VS Code**, press `F1`(Show all commands), start typing "**reopen**" then select "**Dev Containers: Reopen in Container**"
3. Run few ROS2 examples:
   ```bash
   # ROS2 turtle demo
   ros2 launch turtle_tf2_py turtle_tf2_demo.launch.py

   # Nav2 turtle demo (gazebo takes a long time to start)
   ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py

   # GUI tools:
   rqt
   rviz2
   gazebo
   ```
4. To close the dev container, start typing "**close**" then select "**Remote: Close Remote Connection**"

## Install packages

- Packages installed from terminal only temporarily exist in the local container. 
- Edit `./.devcontainer/Dockerfile` to permanently install and remove packages.
- Rebuild the container after updating the `Dockerfile`.

## Rebuild the container

From **VS Code**, press `F1`(Show all commands), start typing "rebuild" then select "Dev Containers: Rebuild and Reopen in Container"

