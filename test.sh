#!/bin/bash

if ! curl -I http://localhost:80/en/ &> /dev/null; then
    exit 1
fi