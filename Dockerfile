# 베이스 이미지를 nginx의 최신 안정 버전으로 설정
FROM nginx:alpine

# 정적 파일을 컨테이너의 nginx 서버가 제공하는 경로로 복사
COPY ./src /usr/share/nginx/html

# 기본적으로 제공되는 nginx 설정을 사용하거나, 필요하다면 커스텀 설정 파일을 추가할 수 있음
# COPY ./config/nginx.conf /etc/nginx/nginx.conf

# 80 포트를 열어 외부에서 접근 가능하게 함
EXPOSE 80

# nginx 서버를 시작
CMD ["nginx", "-g", "daemon off;"]
