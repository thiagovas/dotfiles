#!/bin/bash
# Setting git's configs...

# https://help.github.com/articles/caching-your-github-password-in-git/
git config --global credential.helper cache

# Setting timer to 5 minutes...
git config --global credential.helper 'cache --timeout=300'
