# syntax=docker/dockerfile:experimental
FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest
ARG VERSION
LABEL maintainer="Johannes Tegnér <johannes@jitesoft.com>" \
      maintainer.org="Jitesoft" \
      maintainer.org.uri="https://jitesoft.com" \
      com.jitesoft.project.repo.type="git" \
      com.jitesoft.project.repo.uri="https://gitlab.com/jitesoft/dockerfiles/cfssl" \
      com.jitesoft.project.repo.issues="https://gitlab.com/jitesoft/dockerfiles/cfssl/issues" \
      com.jitesoft.project.registry.uri="registry.gitlab.com/jitesoft/dockerfiles/cfssl" \
      com.jitesoft.app.cfssl.version="${VERSION}"

ARG TARGETARCH
RUN --mount=type=bind,source=./bin,target=/tmp \
    addgroup -g 1000 cfssl \
 && adduser -u 1000 -G cfssl -s /bin/ash -D cfssl \
 && cp /tmp/${TARGETARCH}/* /usr/local/bin/ \
 && chmod +x /usr/local/bin/*

USER cfssl
ENTRYPOINT ["entrypoint"]
CMD ["cfssl", "version"]
