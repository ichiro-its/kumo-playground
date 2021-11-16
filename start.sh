cd "$(dirname "$0")"

echo "installing react app dependencies"
cd app_example
npm i

gnome-terminal -- npm start

echo "setting up ros2 workspace"
cd ../ros2_workspace
. /opt/ros/foxy/setup.bash
. install/setup.bash
colcon build

gnome-terminal --tab -- ros2 run kumo bridge 
gnome-terminal --tab -- ros2 run test talker 
gnome-terminal --tab -- ros2 run test listener 
gnome-terminal --tab -- ros2 run test client 
gnome-terminal --tab -- ros2 run test server 