## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-golang/blob/main/Dockerfile">latest (1.16)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-golang/issues">https://github.com/ngacareer/alpine-golang/issues</a>

## What is alpine-golang ? 

Linux lightweight, Golang environment.

## How to use this image
- On Docker 
```
docker run -itd --name alpine-golang ngacareer/alpine-golang
docker exec -it alpine-golang sh
# curl https://ngacareer.com
 ```
- On Kubernetes
 ```
kubectl run alpine-golang --image=ngacareer/alpine-golang
kubectl exec -it alpine-golang sh
#curl https://ngacareer
 ```
- On OpenShift
 ```
oc run alpine-golang --image=ngacareer/alpine-golang
oc exec alpine-golang  -i -t sh
#curl https://ngacareer.com
 ```
