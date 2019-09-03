FROM alpine:3.10

WORKDIR /resources
COPY resources resources
COPY vendors vendors
CMD ["/bin/false"]
