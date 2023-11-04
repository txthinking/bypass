#!/usr/bin/env bash

curl https://bash.ooo/nami.sh | bash
export PATH=$HOME/.nami/bin:$PATH

nami install 7z
nami install jb
nami install zig
zig --help
echo '#!/usr/bin/env jb' > /tmp/a.js
echo 'echo(111)' >> /tmp/a.js
jb /tmp/a.js
otool -L $HOME/.nami/bin/jb
