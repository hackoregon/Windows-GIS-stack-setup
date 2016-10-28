#! /bin/bash

pushd ~/Downloads
export WHERE=http://get.enterprisedb.com/postgresql/
export WHAT=postgresql-9.6.1-1-linux-x64.run
wget --quiet ${WHERE}/${WHAT}
chmod +x ${WHAT}
sudo ./${WHAT}
popd
