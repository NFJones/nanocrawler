#!/bin/bash

init_config() {
    for config in client-config.json server-config.json; do
        if ! [ -e /opt/nanocrawler/${config} ]; then
            cp /nanocrawler/examples/nano/${config} /opt/nanocrawler/${config}
        fi
        cp /opt/nanocrawler/${config} /nanocrawler/src/${config}
    done
}

main() {
    init_config
    yarn start
}

main
