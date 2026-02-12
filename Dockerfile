FROM nvidia/cuda:12.1.0-base-ubuntu22.04
RUN apt-get update && apt-get install -y wget tar
WORKDIR /app
RUN wget https://github.com/develotex/community-gminer/releases/download/v3.43/gminer_3_43_linux64.tar.xz && \
    tar -xvf gminer_3_43_linux64.tar.xz
# On mine sur un pool GPU (exemple Pyrin) - Remplace l'adresse par ton wallet PYI ou garde XMR via un pool de conversion
CMD ["./miner", "--algo", "pyr", "--server", "de.pyrin.herominers.com:1177", "--user", "pyrin:votre_adresse_pyrin.h200_ghost"]
