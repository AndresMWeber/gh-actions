FROM mottosso/maya:2018

RUN mkdir /repo

WORKDIR /repo

COPY ./ /repo

RUN echo `ls`

ENTRYPOINT ["/repo/entrypoint.sh"]
