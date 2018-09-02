#!/bin/bash
if ! [[ -z "$GIT_REPO" ]]; then
    git clone --recursive $GIT_REPO GIT_REPO
    tar -czf GIT_REPO.tar.gz GIT_REPO
fi

if ! [[ -z "$HG_REPO" ]]; then
    hg clone $HG_REPO HG_REPO
    tar -czf HG_REPO.tar.gz HG_REPO
fi

if ! [[ -z "$CURL_BIN" ]]; then
    curl -o CURL_BIN $CURL_BIN
fi

if ! [[ -z "$YTDL" ]]; then
    mkdir YTDL
    cd YTDL
    sudo pip install --upgrade youtube-dl
    youtube-dl $YTDL
    cd ..
    tar -czf YTDL.tar.gz YTDL
fi
