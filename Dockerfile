FROM scratch
ADD ./helloip /helloip
ENTRYPOINT ["/helloip"]
EXPOSE 8080
