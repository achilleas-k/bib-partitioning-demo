FROM quay.io/centos-bootc/centos-bootc:stream9

# Create mountpoints for custom partitions
RUN mkdir -p /app /var/data
