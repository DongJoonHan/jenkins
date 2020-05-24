FROM tomcat:9-jre8-alpine

RUN	 apk add -y ttf-dejavu

# war 파일 복사
COPY war/target/jenkins.war /usr/local/tomcat/webapps

# java option 추가
ENV JAVA_OPTS="-DsvrNo=4"

# docker container의 timezone을 서울로 변경
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 8080포트
EXPOSE 8080