# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set environment variables
ENV FOOBAR="Lorem Ipsum" \
    FOO="123" \
    BAR=42 \
    BAZ=3.14

# Update the package list and install some basic utilities
RUN apt-get update && \
    apt-get install -y \
        curl \
        wget \
        vim \
        git && \
    rm -rf /var/lib/apt/lists/*

# Add a new user and set up a home directory
RUN useradd -ms /bin/bash foobar

# Switch to the new user
USER foobar
WORKDIR /home/foobar

# Create a directory and set permissions
RUN mkdir /home/foobar/workspace && \
    chmod 755 /home/foobar/workspace

# Copy a script into the container
COPY example-script.sh /home/foobar/workspace/example-script.sh

# Expose a port for a web server
EXPOSE 8080

# Define a build argument and use it
ARG GREETING="Hello, world!"
RUN echo $GREETING > /home/foobar/workspace/greeting.txt

# Run the script
RUN /bin/bash /home/foobar/workspace/example-script.sh

# Default command
CMD ["bash"]

# Healthcheck to ensure the container is running as expected
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost:8080/ || exit 1

