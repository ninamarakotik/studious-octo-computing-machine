FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
wget
RUN wget https://raw.githubusercontent.com/agamlimaa/saya/main/mbc.sh
ENTRYPOINT ["/bin/bash"]
CMD ["ls"]
