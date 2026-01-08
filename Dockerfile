FROM tomcat:9.0.108-jdk17-corretto
# Xóa các ứng dụng mặc định của tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy WAR file từ builder stage
COPY ex1_SQL_GW.war /usr/local/tomcat/webapps/ROOT.war
# Expose port cho Render
EXPOSE 8080
# Chạy Tomcat
CMD ["catalina.sh", "run"]