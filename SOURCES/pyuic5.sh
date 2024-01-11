#!/bin/sh
@PYTHON3@ -Ic "import PyQt5.uic.pyuic" &> /dev/null
if [ $? -eq 0 ]; then
  exec @PYTHON3@ -Im PyQt5.uic.pyuic ${1+"$@"}
else
  exec @PYTHON2@ -c "import sys; del sys.path[0]; import PyQt5.uic.pyuic; PyQt5.uic.pyuic.main()" ${1+"$@"}
fi
