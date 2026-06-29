# --- Bước 1: Dùng bản Maven và Java 17 chuẩn ---
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app

COPY . .

# Thực hiện build dự án
RUN mvn clean package -DskipTests

# --- Bước 2: Web Server Tomcat hỗ trợ Java 17 ---
FROM tomcat:10.1-jdk17-temurin

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war vào thư mục webapps của Tomcat và đổi tên thành ROOT.war
COPY --from=builder /app/target/Lab7-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
