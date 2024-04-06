# Use the official Jenkins image as a base
FROM jenkins/jenkins:latest

# Install Maven
USER root
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Switch back to the Jenkins user
USER jenkins