**#Docker build a tomcat**
```js
docker build -t mytomcat . --no-cache
```
Build出image後直接run
```js
docker run -d -p 8080:8080 mytomcat
```

FROM： 使用到的 Docker Image 名稱，今天使用 CentOS

MAINTAINER： 用來說明，撰寫和維護這個 Dockerfile 的人是誰，也可以給 E-mail的資訊

RUN： 格式為 RUN <command> 或 RUN ["executable", "param1", "param2"]。
前者將在 shell 終端中運行命令，即 /bin/sh -c；後者則使用 exec 執行。指定使用其它終端可以透過第二種方式實作，例如 RUN ["/bin/bash", "-c", "echo hello"]。
每條 RUN 指令將在當前映像檔基底上執行指定命令，並產生新的映像檔。當命令較長時可以使用 \ 來換行。   

ENV： 用來設定環境變數

CMD： 在指行 docker run 的指令時會直接呼叫開啟 Tomcat Service
