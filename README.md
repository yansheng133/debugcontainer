# debugcontainer
debug container for x86 and arm platform
-this is for Kubernetes-
## this is for debug use only, do not use it for BAD!

## how to build this? 
podman build --platform linux/amd64,linux/arm64 -t debug:latest .
podman image list
podman tag localhost/debug:tag docker.io/YOUR_ACCOUNT/debugcontainer:tag

## just need container image
here you go: docker.io/yansheng133/debugcontainer:latest
