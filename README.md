# daisaacson/chrony

NTP Server using chronyd running alpine linux

## Environment Variables:

* SERVER

** hostname of ntp pool 

## Example:

```bash
docker run --rm -it daisaacson/chrony
```

## Build

### docker

### podman

```shell
version="0.19"
image="daisaacson/chrony"
podman manifest create ${image}:${version}
podman build --platform linux/amd64,linux/arm64,linux/i386 --manifest ${image}:${version} .
podman login docker.io
podman manifest push ${image}:${version}
```