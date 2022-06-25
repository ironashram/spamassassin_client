#!/bin/sh

docker build -t spamassassin_client_test:latest .

docker run -t spamassassin_client_test:latest
