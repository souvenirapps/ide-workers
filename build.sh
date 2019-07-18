#!/usr/bin/env bash

cd $(dirname "$0")

DIR=$(cd -)

for lang in $(ls "$DIR/containers")
do
    cd ${DIR}/containers/${lang}

    echo "CURRENT DIR: ${DIR}/containers/${lang}"
    ls ${DIR}/containers/${lang}
    
    docker image rm ifaisalalam/ide-worker-${lang}
    docker build -t ifaisalalam/ide-worker-${lang}
    cd ${DIR}
done
