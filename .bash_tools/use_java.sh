#!/bin/bash

case "$1" in
        "7")
		VERSION=jdk1.7.0_79.jdk
		;;
        "8")
                VERSION=jdk1.8.0_101.jdk
                ;;
        *)
                echo "Unknown JDK version! Specify 7 or 8!"
                ;;
esac

PATH_BEFORE_VERSION=/Library/Java/JavaVirtualMachines
PATH_AFTER_VERSION=Contents/Home

export JAVA_HOME=$PATH_BEFORE_VERSION/$VERSION/$PATH_AFTER_VERSION
export PATH=$(echo $PATH | sed -E "s!${PATH_BEFORE_VERSION}/([^/]+)!${PATH_BEFORE_VERSION}/${VERSION}!g")
java -version
