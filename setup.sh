cd "$(dirname "$0")"
echo "setting up ros2 workspace"
cd ros2_workspace
. /opt/ros/foxy/setup.bash
. install/setup.bash
colcon build
echo "installing react app dependencies"
cd ../app_example
npm i
