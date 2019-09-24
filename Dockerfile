FROM registry.gitlab.com/jitesoft/dockerfiles/go:latest AS stage0
RUN apk add --no-cache git gcc \
 && go get -u github.com/cloudflare/cfssl/cmd/...

COPY ./entrypoint /go/bin

FROM registry.gitlab.com/jitesoft/dockerfiles/alpine:latest

COPY --from=stage0 /go/bin /usr/local/bin
RUN addgroup -g 1000 cfssl \
 && adduser -u 1000 -G cfssl -s /bin/ash -D cfssl \
 && chmod -R +x /usr/local/bin

USER cfssl

ENTRYPOINT ["entrypoint"]
CMD ["cfssl", "version"]
