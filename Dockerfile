# --- Bước 1: Build dự án bằng Maven và Java 11 ---
FROM maven:3.8.6-openjdk-11 AS builder
WORKDIR /app

# Copy toàn bộ mã nguồn vào trong Container
COPY . .

# Thực hiện build dự án để sinh ra file .war (bỏ qua chạy thử test để build nhanh hơn)
RUN mvn clean package -DskipTests

# --- Bước 2: Chạy file WAR bằng Tomcat ---
# Sử dụng Tomcat phiên bản 10 phù hợp với Jakarta EE 10 bạn đang cấu hình
FROM tomcat:10.1-jdk11-temurin

# Xóa các ứng dụng mặc định của Tomcat để tránh xung đột cổng hoặc đường dẫn root
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file .war vừa build ở Bước 1 vào thư mục webapps của Tomcat và đổi tên thành ROOT.war
# Điều này giúp bạn truy cập trực tiếp bằng đường dẫn http://localhost:8080/ mà không cần gõ tên file
COPY --from=builder /app/target/Lab7-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080 để máy tính bên ngoài có thể truy cập
EXPOSE 8080

# Chạy Tomcat server
CMD ["catalina.sh", "run"]