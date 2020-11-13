#!/bin/sh

# I can never remember how to setup git to sign commits with
# my pgp key from keybase.
#
# Now I don't have to.

keybase pgp export -q D3055E7C547D4864 --outfile joeatpurdydotdev.pub.key
keybase pgp export -q D3055E7C547D4864 --secret --outfile joeatpurdydotdev.key

gpg --allow-secret-key-import --import joeatpurdydotdev.key
gpg --import joeatpurdydotdev.pub.key

echo "Update key to be trusted. Enter the 'trust' command at the gpg> prompt and make sure to 'save' the changes."
gpg --edit-key joe@purdy.dev

# Cleanup by removing the exported keys from disk
rm joeatpurdydotdev.pub.key joeatpurdydotdev.key