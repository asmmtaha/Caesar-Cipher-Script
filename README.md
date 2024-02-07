# Caesar Cipher Script

This script is a Bash script that applies the [Caesar Cipher](https://en.wikipedia.org/wiki/Caesar_cipher) encryption method.

## Usage

The script shifts the text by the specified rotation amount (clockwise). If no rotation amount is specified, the default value is 13.

```bash
./caesar.sh -h
usage: caesar.sh [rotation]

This program will read from stdin and rotate (shift right) the text by
the specified rotation.  If none is specified, then the default value is
13.
