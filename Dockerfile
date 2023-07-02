FROM ubuntu:22.04

# Install dependencies and tools
RUN apt-get update && apt-get install -y \
    wget \
    openjdk-11-jdk

# Download Maven
RUN wget -q https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz

# Extract Maven
RUN tar xf apache-maven-3.9.3-bin.tar.gz -C /opt

# Clean up Maven archive
RUN rm apache-maven-3.9.3-bin.tar.gz

# Set environment variables
ENV MAVEN_HOME=/opt/apache-maven-3.9.3
ENV PATH=$MAVEN_HOME/bin:$PATH

# Check Maven version
RUN mvn --version
