#!/bin/bash

rm -rf /srv/www/localhost/blog/*
cp -r _site/* /srv/www/localhost/blog
