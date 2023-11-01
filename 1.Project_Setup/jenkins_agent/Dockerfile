# Use an official Jenkins JNLP Agent base image
FROM jenkins/inbound-agent:4.10-4

# Switch to root user for installation
USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y unzip

# Install AWS CLI
RUN mkdir -p /usr/local/aws && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && \
    unzip /tmp/awscliv2.zip -d /usr/local/aws && \
    /usr/local/aws/aws/install && \
    rm -f /tmp/awscliv2.zip

# Install Helm
RUN mkdir -p /usr/local/helm && \
    curl -L "https://get.helm.sh/helm-v3.7.0-linux-amd64.tar.gz" -o "/tmp/helm.tar.gz" && \
    tar -xvzf /tmp/helm.tar.gz -C /usr/local/helm && \
    ln -s /usr/local/helm/linux-amd64/helm /usr/local/bin/helm && \
    rm -f /tmp/helm.tar.gz

# Install Maven
RUN apt-get install -y maven

# Clean up
RUN apt-get clean

# Switch back to the Jenkins user
USER jenkins

# Set working directory
WORKDIR /home/jenkins/agent

# Define the entrypoint
ENTRYPOINT ["jenkins-agent"]
