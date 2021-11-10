# kumo_playground
Playground repository for kumo

## Installation
### React App
Install app dependencies using `npm i` from the react app root.

### Ros2 Workspace
- Source the ros2 workspace using `. install/setup.bash` from the workspace root.
- build packages using `colcon build`.

## Making ROS2 Nodes with kumo-app

###`NodeProvider`
`nodeName`: name of the ROS2 node.

you can make your ROS2 publisher, subscriber, client, or service inside of `nodeProvider`.

### `PublisherProvider`
`messageType`: type of the ROS2 message.
`topicName`: name of the ROS2 topic.

### `SubscriptionProvider`
`messageType`: type of the ROS2 message.
`topicName`: name of the ROS2 topic.
`callback`: function on receive message.

### `ClientProvider`
`serviceType`: type of the ROS2 service.
`serviceName`: name of the ROS2 service

### `ServiceProvider`
`serviceType`: type of the ROS2 service.
`serviceName`: name of the ROS2 service
`callback`: function on service call.
