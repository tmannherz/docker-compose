FROM docker/compose
LABEL maintainer="todd.mannherz@gmail.com"

ENV AUTH_URL "https://gcr.io"

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
