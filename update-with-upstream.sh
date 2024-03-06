#!/bin/bash

my_url="git@github.com:staehle/zsh-completions.git"
upstream_url="https://github.com/zsh-users/zsh-completions.git"
my_branch="staehle"
upstream_branch="master"

set -ex

git checkout ${my_branch}

git remote remove upstream || true

git remote add upstream ${upstream_url}

git remote update -p

git merge upstream/${upstream_branch}

#git push origin master

echo "check output and then 'git push origin ${my_branch}'"


