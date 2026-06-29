# --- Bước 1: Sửa đổi từ openjdk-11 lên openjdk-17 ---
FROM maven:3.8.6-openjdk-17 AS builder
WORKDIR /app

COPY . .

# Thực hiện build dự án
RUN mvn clean package -DskipTests

# --- Bước 2: Thay đổi Web Server Tomcat hỗ trợ Java 17 ---
FROM tomcat:10.1-jdk17-temurin

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war vào thư mục webapps của Tomcat và đổi tên thành ROOT.war
COPY --from=builder /app/target/Lab7-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
