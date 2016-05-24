# Dockerfile Demo
Demonstration of a Dockerfile, and a simple build script and start script to accompany it.

Requires docker installation prior to use. Example:

```
curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine

export OS_REGION_NAME=IAD
export OS_USERNAME=yourCloudUserName
export OS_API_KEY=e800b4fdc8797498f4170878f35d2e53

docker-machine create -d rackspace my-machine
eval "$(docker-machine env my-machine)"
```

Clone the repo:

```git clone https://github.com/adrianotto/dockerfile_demo.git```

Run the build.sh script:

```sh -x build.sh```
