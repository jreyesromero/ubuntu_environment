# Instructions to install the Amazon ECS CLI on ubuntu systems.
#
# 1.- Download the binary
sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
#
# 2.- Apply execute permissions to the binary
sudo chmod +x /usr/local/bin/ecs-cli
#
# 3.- Verify that the CLI is working properly. 
#     --version must return a message similar to: ecs-cli version x.y.z
ecs-cli --version
