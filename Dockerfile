# # 사용할 베이스 이미지
# FROM python:3.9-slim-buster
# RUN apt-get update
# RUN apt-get install default-libmysqlclient-dev -y
# RUN pip install --upgrade pip
# RUN pip install mysqlclient


# # 작업 디렉토리를 생성하고, 이동합니다.
# WORKDIR /app

# # 필요한 파일을 복사합니다.
# COPY requirements.txt ./

# # 필요한 패키지를 설치합니다.
# RUN pip install --no-cache-dir -r requirements.txt

# # 소스 코드를 복사합니다.
# COPY . .

# # 컨테이너 실행 시 실행될 명령어를 설정합니다.
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

FROM python:3.9-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /srv/docker-server
ADD . /srv/docker-server
WORKDIR /srv/docker-server
RUN apt-get update
RUN apt-get install -y python3-dev default-libmysqlclient-dev build-essential
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install mysqlclient
EXPOSE 8000
