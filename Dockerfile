# 基于 nginx 官方镜像构建
FROM nginx:latest

# env variables
ENV LISTEN_PORT 1811


# 在容器中创建目录用于存放认证文件
RUN mkdir -p /etc/nginx/auth

# 将认证文件复制到容器中
COPY nginx.htpasswd /etc/nginx/auth/nginx.htpasswd

# 复制 nginx 配置文件到容器中
COPY nginx.conf /etc/nginx/nginx.conf

# 暴露容器的 1811 端口
EXPOSE ${LISTEN_PORT}
