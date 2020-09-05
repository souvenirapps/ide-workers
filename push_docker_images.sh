#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

DIR="$(cd - || exit 1)"

gcloud auth configure-docker

for lang in containers/*
do
    cd "${lang}/" || exit 1

    LANG="$(echo "${lang}" | cut -d'/' -f2)"
    CONTAINER="$CONTAINER_BASE_PATH/ide-worker-${LANG}"

    docker push "$CONTAINER"
    cd "${DIR}" || exit 1
done
