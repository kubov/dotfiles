#!/usr/bin/env bash

config_dir_src=./emacs-config
dotemacs_src=emacs

config_dir_dest=~/emacs-config
dotemacs_dest=~/.emacs

migrate $config_dir_src $config_dir_dest
migrate $dotemacs_src $dotemacs_dest
