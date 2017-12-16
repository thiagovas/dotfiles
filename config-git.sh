#!/bin/bash
# Setting git's configs...


git config --global user.name "Thiago Silva"

current_email=$(git config --global --get user.email)

#if current_email is empty, then add an email
if [[ -z "$current_email" ]]
then
  git config --global user.email "thiagovieiraas@gmail.com"
fi

git config --global github.user thiagovas


# https://help.github.com/articles/caching-your-github-password-in-git/
git config --global credential.helper cache

# Setting timer to 5 minutes...
git config --global credential.helper 'cache --timeout=300'


git config --global push.default simple
