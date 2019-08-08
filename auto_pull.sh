#!/bin/sh

# === Initialize shell environment ===================================
set -eu
umask 0022
export LC_ALL=C
type command >/dev/null 2>&1 && type getconf >/dev/null 2>&1 &&
  export PATH="$(command -p getconf PATH)${PATH+:}${PATH-}"
export UNIX_STD=2003 # to make HP-UX conform to POSIX

# >>> PUT YOUR CONTENTS DIRECTORY <<<
contents_dir=YourCMSLocation/CollabCMS/Home/Master/Contents

echo [$(date)] Auto Pull Script is AWAKEN >>hook.log

echo Target contents directory: $contents_dir >>hook.log

(
  cd $contents_dir
  git fetch
  git merge origin/master
) 1>>hook.log 2>&1

echo END Script >>hook.log
