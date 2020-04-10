FROM mottosso/maya:2018

RUN mkdir /repo

WORKDIR /repo

COPY ./ /repo

ENTRYPOINT ["/repo/entrypoint.sh"]