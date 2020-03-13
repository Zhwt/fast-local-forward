FROM alpine:latest

ENV REMOTE_HOST=example.com \
    REMOTE_PORT=22

EXPOSE 2222

COPY rootfs /

RUN chmod u+x entrypoint.sh \
    && apk --no-cache add openssh sshpass \
    && ssh-keygen -A \
    && echo "root:root" | chpasswd

ENTRYPOINT [ "/entrypoint.sh" ]
