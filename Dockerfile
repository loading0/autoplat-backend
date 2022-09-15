FROM python:3.10.5-alpine
LABEL maintainer='loading'
LABEL description='Django project'

# 创建/project目录并切换进目录下
# 第一个WORKDIR要用绝对路径
WORKDIR project
# 把dockerfile当前目录下的所有文件拷贝进镜像的/project目录下
COPY . .

# 安装必要的库
RUN pip install --no-cache-dir -i https://pypi.douban.com/simple -r requirements.txt
ENV LANG C.UTF-8
CMD ["gunicorn", "Interface_autoplatform.wsgi:application","-c","./gunicorn.conf.py"]
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' etc/apk/repositories && \
#    apk update && \
#    apk upgrade && \
#    apk add --no-cache tzdata mariadb-dev gcc libc-dev && \
#    cp usr/share/zoneinfo/Asia/Shanghai etc/localtime && \
#    echo "Asia/Shanghai" > etc/timezone && \
#    python -m pip install -i https://pypi.douban.com/simple --upgrade pip && \
#    pip install --no-cache-dir -i https://pypi.douban.com/simple -r requirements.txt && \
#    chmod 777 ./entrypoint.sh

# 创建一个日志挂载点避免容器越来越大
VOLUME project/logs/

# 挂载端口，它并不会做端口映射，只是告诉用户，该镜像的挂载端口
#EXPOSE 8000

# 容器的默认执行命令
# CMD 'supervisord -c supervisord.conf'
#ENTRYPOINT ["./entrypoint.sh"]