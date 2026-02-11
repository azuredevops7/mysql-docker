FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=myapp_db
ENV MYSQL_USER=myapp_user
ENV MYSQL_PASSWORD=myapp_password

# Copy initialization scripts (optional)
# These will run automatically when container starts for the first time
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306

# The base image already has CMD to start MySQL
# CMD ["mysqld"]
