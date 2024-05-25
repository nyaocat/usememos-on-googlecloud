FROM neosmemo/memos:0.22.1

RUN wget -O - 'https://github.com/benbjohnson/litestream/releases/download/v0.3.13/litestream-v0.3.13-linux-amd64.tar.gz' \
  | tar x -C /usr/local/bin -z -f -

COPY litestream.yml /etc/litestream.yml
COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
