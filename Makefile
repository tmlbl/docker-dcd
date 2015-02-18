# Build the image by default
.PHONY: default
default:
	- docker build -t tmlbl/dcd .

# Start a dcd container
.PHONY: start
start:
	- docker run -d --net=host --name=dcd tmlbl/dcd

# Stop and remove the dcd container
clean:
	- docker rm -f dcd
