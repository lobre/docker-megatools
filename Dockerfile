FROM debian:unstable

# Install package
RUN apt-get update && apt-get install -y megatools && rm -rf /var/lib/apt/lists/*

# Create user
RUN useradd -ms /bin/bash mega
USER mega
WORKDIR /home/mega

# Define default entrypoint
ENTRYPOINT ["megadl"]
