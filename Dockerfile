# Use the Atlassian default image as the base
FROM atlassian/default-image:4

# Install dependencies and tools
RUN apt-get update && \
    apt-get install -y python3-pip unzip && \
    pip install awscli && \
    wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip && \
    unzip terraform_1.6.6_linux_amd64.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/terraform && \
    rm terraform_1.6.6_linux_amd64.zip && \
    curl -fsSL https://bun.sh/install | bash && \
    export BUN_INSTALL="$HOME/.bun" && \
    export PATH="$BUN_INSTALL/bin:$PATH"
