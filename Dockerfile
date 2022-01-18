FROM alpine:latest
RUN apk add --no-cache openssh-client
RUN apk add --no-cache openssl
RUN mkdir -p ~/.ssh
RUN chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
RUN touch ~/.ssh/id_rsa
RUN chmod 600 ~/.ssh/id_rsa
