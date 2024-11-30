# Use latest Ubuntu LTS version
FROM ubuntu:22.04

# Add metadata labels
LABEL description="Container for stress-ng system stress testing tool"
LABEL version="1.0"

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Create a non-root user for running the application
RUN groupadd -r stressng && useradd -r -g stressng stressng

# Install stress-ng in a single layer
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       stress-ng \
       ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* /var/tmp/*

# Set working directory
WORKDIR /tmp

# Switch to non-root user
USER stressng

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD stress-ng --version || exit 1

# Set the entrypoint
ENTRYPOINT ["stress-ng"]

# Default command (can be overridden)
CMD ["--help"]