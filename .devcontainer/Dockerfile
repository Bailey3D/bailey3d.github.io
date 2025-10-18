FROM mcr.microsoft.com/devcontainers/ruby:3.1-bullseye

# Install Python
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Install Jekyll dependencies as root
RUN gem install bundler jekyll

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Create workspace directory with proper permissions
RUN mkdir -p /workspace && chown -R vscode:vscode /workspace

# Set environment variables for user gem installs
ENV GEM_HOME=/usr/local/bundle \
    BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_APP_CONFIG=/usr/local/bundle

# Switch to vscode user
USER vscode

# Set working directory
WORKDIR /workspace

# Expose Jekyll port
EXPOSE 4000