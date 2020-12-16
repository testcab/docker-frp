#!/bin/sh

set -eu

ENV2FILE_CONTENT=${FRP_CONFIG_CONTENT-} /bin/sh /env2file --verbose --no-clobber
/usr/bin/$FRP
