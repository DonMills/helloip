# helloip
A go based docker that runs a web server for load balancer testing

I wrote this based off of the adejonge/helloworld docker image, which is a super tiny container I always use for testing.  But when you run that docker behind a load balancer, or on multiple containers, it always prints the same hello world message.

To rectify this I modified the code to look up the hostname and ip address of eth0, and print them to the web service.

Running it:
```
docker pull cthulu13/helloip
docker run -p 8080:8080 --name helloip cthulu13/helloip
```
Build it yourself:
```
cd {directory of this repo}
CGO_ENABLED=0 go build -a -ldflags '-s' helloip.go
docker build .
```
Comes out to a 5.333 MB docker.

To test it, just hit the host (or loadbalancer, etc) on port 8080 via browser or curl.
Enjoy!
