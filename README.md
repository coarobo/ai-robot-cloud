# AI Robot Cloud

> **Note:** This project is privately hosted on GitLab at [coarobo/workspaces/ai-robot-book/ai-robot-cloud](https://gitlab.com/coarobo/workspaces/ai-robot-book/ai-robot-cloud) for development and publicly mirrored on GitHub at [coarobo/ai-robot-cloud](https://github.com/coarobo/ai-robot-cloud) for usage.
> Only developers with write access to the repository on GitLab can push new code or images.

AI Robot Cloud enables users to run ROS 2 simulations inside a Docker container using a VNC desktop hosted on AWS.
Specifically, it modifies the Docker image of [coarobo/workspaces/ai-robot-book/ai-robot-desktop](https://gitlab.com/coarobo/workspaces/ai-robot-book/ai-robot-desktop) by making performance adjustments, such as installing the Nvidia drivers for 3D acceleration.
This repository was forked from [hotic06/ros2-desktop-nvidia](https://github.com/hotic06/ros2-desktop-nvidia), which provides the base implementation using the original image of the book *｢ROS2とPythonで作って学ぶAIロボット入門｣* (also known as *"AI Robot Book"*) publicly available at [AI-Robot-Book/docker-ros2-desktop-ai-robot-book](https://github.com/AI-Robot-Book/docker-ros2-desktop-ai-robot-book).
This fork, renamed `ai-robot-cloud`, features minor corrections and enhancements made by [Coarobo GK](https://coarobo.com/).

## Original Work

> **Note:** The content below is retrieved from the time of forking [hotic06/ros2-desktop-nvidia](https://github.com/hotic06/ros2-desktop-nvidia) at commit [`a9d6521`](https://github.com/hotic06/ros2-desktop-nvidia/tree/a9d652191827876fcbb96b662f962ec96d1db9d3).

**Original license:**
*   `LICENSE`: [hotic06/ros2-desktop-nvidia/LICENSE](https://github.com/hotic06/ros2-desktop-nvidia/blob/a9d652191827876fcbb96b662f962ec96d1db9d3/LICENSE)

**Original documentation:**
*   `README.md`: [hotic06/ros2-desktop-nvidia/README.md](https://github.com/hotic06/ros2-desktop-nvidia/blob/a9d652191827876fcbb96b662f962ec96d1db9d3/README.md)
