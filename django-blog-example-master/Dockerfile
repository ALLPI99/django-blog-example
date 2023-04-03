# 공식 Python 런타임 이미지를 부모 이미지로 사용합니다
FROM python:3.9-slim-buster

# 작업 디렉토리를 /app으로 설정합니다
WORKDIR /app

# 현재 디렉토리의 내용을 컨테이너 내부의 /app 디렉토리로 복사합니다
COPY . /app

# requirements.txt에 명시된 필요한 패키지를 설치합니다
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# 컨테이너 내부의 8000 포트를 외부에서 접근할 수 있도록 오픈합니다
EXPOSE 8000

# 환경 변수를 설정합니다
ENV NAME django-blog-example

# 컨테이너가 시작될 때 app.py를 실행합니다
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]