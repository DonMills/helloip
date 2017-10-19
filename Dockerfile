FROM scratch
ADD ./helloip /helloip
CMD ["/helloip"]
EXPOSE 8080
