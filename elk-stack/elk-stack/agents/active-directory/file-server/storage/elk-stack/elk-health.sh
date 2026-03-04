#!/bin/bash

echo "Checking Elasticsearch..."
curl -X GET localhost:9200

echo "Checking Kibana..."
systemctl status kibana | grep Active

echo "Checking Logstash..."
systemctl status logstash | grep Active
