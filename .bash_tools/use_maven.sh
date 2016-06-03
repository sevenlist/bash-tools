#!/bin/bash

case "$1" in
        "305")
                export VERSION=3.0.5
		export MAVEN_OPTS="-Xmx4g -XX:MaxPermSize=1g -Dfile.encoding=UTF-8 -XX:-UseSplitVerifier -Duser.language=en -Duser.country=US"
		;;
        "339")
                export VERSION=3.3.9
		unset MAVEN_OPTS
                ;;
        *)
                echo "Unknown Maven version! Specify 305 or 339!"
                ;;
esac

PATH_BEFORE_VERSION=/Applications/apache-maven-

export M2_HOME=$PATH_BEFORE_VERSION$VERSION
export PATH=$(echo $PATH | sed -E "s!${PATH_BEFORE_VERSION}([^/]+)!${PATH_BEFORE_VERSION}${VERSION}!g")
mvn -v
