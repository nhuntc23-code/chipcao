# --- Bước 1: Dùng bản Maven và Java 17 chuẩn ---
FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# --- Bước 2: Web Server Tomcat hỗ trợ Java 17 ---
FROM tomcat:10.1-jdk17-temurin

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war vào thư mục webapps của Tomcat và đổi tên thành ROOT.war
COPY --from=builder /app/target/Lab7-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# ĐỔI CỔNG SHUTDOWN CỦA TOMCAT THÀNH -1 ĐỂ VÔ HIỆU HÓA NÓ (Sửa lỗi Render gửi lệnh HEAD làm sập app)
RUN sed -i 's/port="8005" shutdown="SHUTDOWN"/port="-1" shutdown="SHUTDOWN"/g' /usr/local/tomcat/conf/server.xml

EXPOSE 8080

CMD ["catalina.sh", "run"]
