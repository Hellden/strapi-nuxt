#!/bin/bash

#Run MongoDB
echo 'Start MongoDB'
sudo mongod --dbpath ~/data/db &

echo 'Start Strapi'
cd "server" && yarn develop &

echo 'Start NUXTJS'
cd ".." && npm run dev


exit