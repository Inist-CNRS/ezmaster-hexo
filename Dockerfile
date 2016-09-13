FROM node:4.4.0

RUN npm install hexo-cli -g && hexo init /blog/ && cd /blog/ && npm install

WORKDIR /blog
VOLUME /blog

# ezmasterization of hexo
# see https://github.com/Inist-CNRS/ezmaster
RUN echo '{ \
  "httpPort": 4000, \
  "configPath": "/blog/_config.yml", \
  "dataPath":   "/blog/source/_posts" \
}' > /etc/ezmaster.json

EXPOSE 4000
CMD hexo server