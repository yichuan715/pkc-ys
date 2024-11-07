FROM python:3.10-slim
COPY PKCYsManage ./app
# 设置工作目录
WORKDIR /app
VOLUME ["/app"]
# 设置环境变量
ENV PKC_VERSION=v1.0.1
# 安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 39900
# 设置容器启动时执行的命令
CMD ["python", "main.py"]
