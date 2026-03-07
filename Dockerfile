FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=shammu101
ENV MYSQL_DATABASE=shammu_db
ENV MYSQL_USER=raju
ENV MYSQL_PASSWORD=raju123

# Copy initialization scripts (optional)
# These will run automatically when container starts for the first time
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306

# The base image already has CMD to start MySQL
# CMD ["mysqld"]
