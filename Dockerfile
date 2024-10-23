# Use Alpine as base image
FROM alpine:latest

# Install OpenSSH server, sudo, and cmatrix
RUN apk update && \
    apk add --no-cache openssh sudo cmatrix bash

# Create necessary directories
RUN mkdir /var/run/sshd

# Create users for different levels and set passwords
RUN adduser -D level1 && echo "level1:password" | chpasswd
RUN adduser -D level2 && echo "level2:WBLb2b1p" | chpasswd
RUN adduser -D level3 && echo "level3:jJAEV8GH" | chpasswd
RUN adduser -D level4 && echo "level4:HARSB74G" | chpasswd
RUN adduser -D level5 && echo "level5:oU4SgBB4" | chpasswd
RUN adduser -D level6 && echo "level6:GHfr82AA" | chpasswd
RUN adduser -D level7 && echo "level7:NNDWijDE" | chpasswd
RUN adduser -D level8 && echo "level8:jgHH7LAR" | chpasswd
RUN adduser -D level9 && echo "level9:gYAt78VV" | chpasswd

# Copy files for all levels and set ownership
COPY levels/level1/readme /home/level1/readme
COPY levels/level2/inhere/ /home/level2/inhere/
COPY levels/level3/secret-file.txt /home/level3/secret-file.txt
COPY levels/level4/.hiddenfile /home/level4/.hiddenfile
COPY levels/level5/inhere /home/level5/inhere/
COPY levels/level6/catme.txt /home/level6/catme.txt
COPY levels/level7/inhere /home/level7/inhere
COPY levels/level8/random.bin /home/level8/random.bin
COPY levels/level9/ /home/level9/

# Set ownership for all levels
RUN chown -R level1:level1 /home/level1 && \
    chown -R level2:level2 /home/level2 && \
    chown -R level3:level3 /home/level3 && \
    chown -R level4:level4 /home/level4 && \
    chown -R level5:level5 /home/level5 && \
    chown -R level6:level6 /home/level6 && \
    chown -R level7:level7 /home/level7 && \
    chown -R level8:level8 /home/level8 && \
    chown -R level9:level9 /home/level9

# Set specific permissions for level 9
RUN chmod 700 /home/level9/protected_file && \
    chmod 600 /home/level9/dummy_file1 /home/level9/dummy_file2 && \
    chmod 777 /home/level9/accessible_file

# Configure SSH to allow login for the level users
RUN echo 'PermitRootLogin no' >> /etc/ssh/sshd_config && \
    echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config && \
    echo 'AllowUsers level1 level2 level3 level4 level5 level6 level7 level8 level9' >> /etc/ssh/sshd_config

# Expose the SSH port
EXPOSE 22

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]


