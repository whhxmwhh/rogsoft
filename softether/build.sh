#!/bin/sh


MODULE=softether
VERSION=1.0
TITLE="SoftEther_VPN_Server"
DESCRIPTION="VPN全家桶"
HOME_URL=Module_softcenter.asp

# Check and include base
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$MODULE" == "" ]; then
	echo "module not found"
	exit 1
fi

if [ -f "$DIR/$MODULE/$MODULE/install.sh" ]; then
	echo "install script not found"
	exit 2
fi

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# change to module directory
cd $DIR

# do something here

do_build_result