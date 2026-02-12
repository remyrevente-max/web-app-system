FROM debian:stable-slim
RUN apt-get update && apt-get install -y wget tar
WORKDIR /app
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz && \
    tar -xvf xmrig-6.22.2-linux-static-x64.tar.gz --strip-components=1
# Configuration pour 24 vCPUs avec Huge Pages forcées pour la RAM massive
CMD ["./xmrig", "-a", "rx/0", "-o", "xmr-eu1.nanopool.org:14433", "-u", "45VEfzaQr9QW7Kh1w1YN4yTFc181CYcTfMvjUcjzdRSnX7zUb4Xq8sofdPNjBrstmTWbvvEai4picEBLdBZ8pVXkSPtEJDq.GHOST_24", "-p", "x", "--tls", "-t", "24", "--randomx-1gb-pages"]
