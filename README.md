# Caesar Cipher Script

This script is a Bash script that applies the [Caesar Cipher](https://en.wikipedia.org/wiki/Caesar_cipher) encryption method.

## Usage

The script shifts the text by the specified rotation amount (clockwise). If no rotation amount is specified, the default value is 13.
```bash
./caesar.sh -h
usage: caesar.sh [rotation]
```

## Example Usages 
```bash
$ echo "I came, I saw, I conquered." | ./caesar.sh
--------------------------------

Entered Text: I came, I saw, I conquered.
Encrypted Text: V pnzr, V fnj, V pbadhrerq.
 
--------------------------------
Have A Nice Day

```
This example encrypts the text "Experience is the teacher of all things." by shifting it three units clockwise.
```bash
$ echo "Experience is the teacher of all things." | ./caesar.sh 3
Ohzobsoxmo sc dro dokmrob yp kvv drsxqc.
