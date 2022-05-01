#!/usr/bin/env bash

set -e

for BRANCH in "stable" "beta" "testing";
do
	echo "updating ${BRANCH}"

	mkdir -p images/${BRANCH}

	curl -sSfo images/${BRANCH}/gluon-factory-example.html "https://firmware.darmstadt.freifunk.net/images/${BRANCH}/factory/"
	curl -sSfo images/${BRANCH}/gluon-other-example.html "https://firmware.darmstadt.freifunk.net/images/${BRANCH}/other/"
	curl -sSfo images/${BRANCH}/gluon-sysupgrade-example.html "https://firmware.darmstadt.freifunk.net/images/${BRANCH}/sysupgrade/"

done
