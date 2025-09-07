# syntax=docker/dockerfile:1
FROM scratch

# Copy frpc binary to /app
COPY frpc /app/frpc

# Create /data directory for config
WORKDIR /app

# Set entrypoint to run frpc with config from /data
ENTRYPOINT ["/app/frpc", "--config_dir", "/data"]
