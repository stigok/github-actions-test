FROM python:3.8-alpine
RUN addgroup -g 1000 app \
    && adduser -S -u 1000 -G app app

ENV PYTHONUNBUFFERED=1
ENTRYPOINT ["/usr/local/bin/python"]
CMD ["-m", "http.server", "8000"]

WORKDIR /usr/src/app
COPY index.html VERSION ./
USER app
