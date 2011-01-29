#!/bin/sh

echo "Generating build files using aclocal, automake and autoconf:"

# Regenerate configuration files
aclocal && \
autoheader && \
automake --add-missing && \
autoconf || exit 1

echo "done."
echo "Now please run './configure'"
