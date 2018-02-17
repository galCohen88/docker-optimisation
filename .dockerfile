FROM python:2.7-alpine as base

RUN mkdir /svc COPY . /svc
WORKDIR /svc

RUN apk add --update \
postgresql-dev \
gcc \
musl-dev \
linux-headers

RUN pip install wheel && pip wheel . --wheel-dir=/svc/wheels

FROM python:2.7-alpine

COPY --from=base /svc /svc
WORKDIR /svc

RUN pip install --no-index --find-links=/shadow_reporting/wheels -r requirements.txt

ENTRYPOINT ["executable", "param1", "param2"]
