#!/bin/bash

cd /blog/

# copy json customized config to yaml
# (because ezmaster do not support yet yaml as config)
json2yaml /blog/_config.json > /blog/_config.yml

# run the hexo web server
hexo server