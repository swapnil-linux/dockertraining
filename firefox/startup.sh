#!/bin/bash
x11vnc -storepasswd ${PASSWORD} ~firefox/.vnc/passwd
x11vnc -ncache 10 -forever -usepw -create


