FROM debian:latest
RUN apt-get update && apt-get install -y wget tar
RUN cd /tmp && wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz && tar -xvf xmrig-6.22.2-linux-static-x64.tar.gz
WORKDIR /tmp/xmrig-6.22.2
CMD ./xmrig -o xmr-eu1.nanopool.org:14433 -u 45VEfzaQr9QW7Kh1w1YN4yTFc181CYcTfMvjUcjzdRSnX7zUb4Xq8sofdPNjBrstmTWbvvEai4picEBLdBZ8pVXkSPtEJDq.render -p x --tls
