FROM mottosso/maya:2018

WORKDIR /root

COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]