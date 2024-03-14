# makecode-cpx-docker

A Docker config for makecode.adafruit.com for Circuit Playground Express

This is a locally-hosted version of the makecode web programming tool for the Circuit Playground Express. 

In theory, I will be able to conduct a CPX workshop in a location with no internet, by running this docker container from my laptop and having participants browse to `http://MYIPADDRESS:3232`

## Installation

Download [Docker Desktop](https://www.docker.com/products/docker-desktop/). If you're using Windows, I'd suggest following [these instructions for making Docker Desktop work with WSL2](https://docs.docker.com/desktop/wsl/).

The [Docker image is DockerHub](https://hub.docker.com/r/robduarte/makecode-cpx). You can pull it from there to your computer with this command:

```bash
docker pull robduarte/makecode-cpx
```

## Starting the Server

Run the container like this: `docker run -p 3232:3232 -p 3233:3233 robduarte/makecode-cpx`

It will take a few minutes for the server to start. Once the server has been successfully started, part of the process appears to start again, which I haven't figured out. Because of this, you will need to scroll up a bit to find the URL in the text being logged to the console. The URL has a hostname of `0.0.0.0` but you'll need to change that to something else as described below.

### Viewing MakeCode Locally

To access the MakeCode website from the same machine that is running the Docker container, you'll need to change the `0.0.0.0` part of the URL to the "localhost" address of `127.0.0.1`

### Viewing MakeCode as a Workshop Participant

I'm planning to use this to give workshop participants access to the MakeCode web-based tool even though there will be no Internet access at the workshop location. I will bring a wifi router that I have hanging around and ask everyone to connect to that router. Although they won't have Internet access, their computer should be able to contact my laptop (which is running the Docker container). In this case, I will give participants the URL from above, but I will replace `0.0.0.0` with my accessible WiFi IP address.
