FROM node:slim

RUN npm install -g bower grunt-cli gulp coffee-script && \
    apt-get update && apt-get install -y git-sh ruby2.1 locales && \
    sed -s -i 's/# en_US/en_US/' /etc/locale.gen && locale-gen && \
    gem2.1 install sass && \
    apt-get purge -y

RUN useradd -m -l -U -s /bin/bash -u 1000 app

WORKDIR /data
USER app

ENV LANG en_US.UTF-8
CMD ["bash"]