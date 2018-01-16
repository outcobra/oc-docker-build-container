FROM jmesserli/openjdk-with-docker

# Install CoreCLR dependencies for Octopus CLI
RUN apt-get update && apt-get -y install libunwind8 libkrb5-3 libicu52 liblttng-ust0 libssl1.0.0 zlib1g libuuid1 && \
        apt-get clean && rm -rf /var/lib/apt/lists/*