FROM alpine:3.13

RUN apk add --no-cache glab
RUN apk add wget
RUN wget https://github.com/cli/cli/releases/download/v2.4.0/gh_2.4.0_linux_386.tar.gz 
RUN tar -xz -f gh_2.4.0_linux_386.tar.gz
RUN mv gh_2.4.0_linux_386/bin/gh /usr/local/bin/gh
RUN chmod +x /usr/local/bin/gh

