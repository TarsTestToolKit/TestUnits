# 编译说明

可以在docker中完成服务的编译

## 制作编译docker

```
docker build . -t test-units
```

运行以上命令, 完成编译docker的制作

## 服务编译

运行docker, 在docker中编译代码
```
docker run -v $(pwd):/root/src test-units /root/build.sh
```