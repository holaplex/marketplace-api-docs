#!/bin/bash

npx spectaql config.yml
mv public /tmp/specpublic/
gco gh-pages
cp -rf /tmp/specpublic/* .
git commit -a -m 'update'
git push
rm -rf /tmp/specpublic/
