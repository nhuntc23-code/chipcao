# --- Bước 1: Build dự án bằng Maven và Java 17 ---
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# --- Bước 2: Dùng Tomcat 9 để tương thích với cấu hình Spring MVC hiện tại ---
FROM tomcat:9.0-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

# Dùng *.war để tự động bắt đúng file war trong thư mục target
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Sửa lỗi gửi lệnh HEAD làm sập app trên Render
RUN sed -i 's/port="8005" shutdown="SHUTDOWN"/port="-1" shutdown="SHUTDOWN"/g' /usr/local/tomcat/conf/server.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]
