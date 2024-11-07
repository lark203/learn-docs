# 使用 node:20 作为基础镜像
FROM node:20

# 创建工作目录（容器中的目录）
RUN mkdir -p /home/app

# 复制当前目录下的所有文件到工作目录
copy * /home/app

# 设置工作目录
WORKDIR /home/app

# 安装依赖包
RUN npm --registry http://mirrors.cloud.tencent.com/npm/ install

# 暴露端口
EXPOSE 9090

CMD ["npm", "run", "docs:dev"]