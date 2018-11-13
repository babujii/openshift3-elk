#!/bin/bash

set -e

# Add kibana as command if needed
if [[ "$1" == -* ]]; then
	set -- kibana "$@"
fi

sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://${142.93.210.181}:9200'!" /opt/kibana/config/kibana.yml

exec "$@"
