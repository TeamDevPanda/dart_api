#!/usr/bin/env bash

URL='http://localhost:9090/api/discovery/v1/apis/teampanda/0.1/rest'
mkdir input
curl -o "discovery document/api.json" ${URL}
