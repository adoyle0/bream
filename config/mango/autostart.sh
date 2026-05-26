#!/bin/bash

set -e

/usr/libexec/xdg-desktop-portal-wlr  >/dev/null 2>&1 &
waybar >/dev/null 2>&1 &
