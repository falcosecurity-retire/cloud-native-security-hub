FROM alpine:3.10

WORKDIR /resources
COPY falco falco
CMD ["/bin/false"]
