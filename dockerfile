# Use the official Tileserver-GL image
FROM maptiler/tileserver-gl:latest

# Set environment variables
ENV PORT=8080

# Copy local config files (if any)
COPY style /style
COPY data /data
COPY build /build

# Expose the port
EXPOSE ${PORT}

# Run Tileserver-GL with custom settings
CMD ["--port", "8080", "--config", "/style/config.json"]