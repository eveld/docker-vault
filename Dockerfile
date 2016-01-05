FROM scratch

ADD vault /vault
ADD server.hcl /server.hcl

EXPOSE 8200

CMD ["/vault", "server", "-config=server.hcl"]
