#!/bin/bash
set -e
set -x

mount --bind ./layer ./root

pivot_root ./root ./root/preroot

cd /
mount -t proc proc /proc

exec bash