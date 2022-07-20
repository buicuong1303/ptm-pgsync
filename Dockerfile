FROM python:3.7
ARG WORKDIR=/code
RUN mkdir $WORKDIR
ADD ./schemas/ $WORKDIR/schemas
ADD ./plugins/ $WORKDIR/plugins
WORKDIR $WORKDIR
ENV PYTHONPATH "${PYTHONPATH}:/code/plugins"
RUN pip install pgsync
COPY ./docker/wait-for-it.sh wait-for-it.sh
COPY ./docker/runserver.sh runserver.sh
RUN chmod +x wait-for-it.sh
RUN chmod +x runserver.sh
