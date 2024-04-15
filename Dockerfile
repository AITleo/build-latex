# Use the latest Debian base image
FROM debian:latest

# Update package lists and install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    texlive-full \
    inkscape && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Specify the default command to run when the container starts
CMD ["bash"]
