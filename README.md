some package download too slow in china insteard by dokcer

#usage
```
image_name=istio
docker run -itd --name ${image_name} willdockerhub/dload:${image_name} sleep 10000
docker cp ${image_name}:/dload/ .
docker rm -f ${image_name}
```
