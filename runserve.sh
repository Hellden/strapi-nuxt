#!/bin/bash

echo 'Start Strapi'
cd "backend" && yarn develop &

echo 'Start NUXTJS'
cd "frontend" && npm run dev &

#Run MongoDB
echo 'Start MongoDB'
sudo mongod --dbpath ~/data/db &

exit