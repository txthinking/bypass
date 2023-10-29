#!/usr/bin/env bash

curl https://bash.ooo/nami.sh | bash
export PATH=$HOME/.nami/bin:$PATH

nami install 7z
nami install bun
nami install jb
nami install zigup
