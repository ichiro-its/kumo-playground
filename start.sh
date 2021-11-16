cd "$(dirname "$0")"

echo "installing react app dependencies"
cd app_example
npm i

gnome-terminal --tab -t 'react app' -- npm start

echo "setting up ros2 workspace"
cd ../ros2_workspace
. /opt/ros/foxy/setup.bash
. install/setup.bash
colcon build

gnome-terminal --tab -t 'bridge' -- ros2 run kumo bridge 
gnome-terminal --tab -t 'publisher' -- ros2 run test talker 
gnome-terminal --tab -t 'subscriber' -- ros2 run test listener 
gnome-terminal --tab -t 'client' -- ros2 run test client 
gnome-terminal --tab -t 'service' -- ros2 run test server 