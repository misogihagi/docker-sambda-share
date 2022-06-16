FROM alpine

COPY smb.conf /etc/samba/smb.conf
COPY phoenix.sh /usr/bin/phoenix.sh
RUN apk add samba \
  && mkdie /share \
  && chown nobody:nogroup /share \
  && chmod 777 /share \
  && chmod +x /usr/bin/phoenix.sh

ENTRYPOINT [ "/bin/sh", "/usr/bin/phoenix.sh" ]
