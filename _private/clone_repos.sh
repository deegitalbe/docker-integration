#!/bin/bash

# Retrieving parameters as array
repos=("$@")

# Cloning each repository
for repo in repos ; do
    git clone $repo
done