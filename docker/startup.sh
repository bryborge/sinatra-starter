#! /bin/bash

set -e

bundle exec rackup -s puma -o 0.0.0.0 -p 5678
