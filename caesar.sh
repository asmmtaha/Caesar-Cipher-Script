#!/bin/bash

# Author: Asım Taha Şanlı 
# Email: tahasanli76@gmail.com

# Caesar Cipher Encryption Function
caesar_encrypt() {
  local text=$1
  local shift=$2
  encrypted_text=""

  for ((i = 0; i < ${#text}; i++));
    do
    char="${text:$i:1}"
    if [[ $char =~ [A-Za-z] ]]; then
      ascii_code=$(printf '%d' "'$char")
      is_uppercase=false

      # Check if the character is uppercase
      if [[ $ascii_code -ge 65 && $ascii_code -le 90 ]];
      then
        is_uppercase=true
      fi

      # Apply Caesar Cipher shift
      encrypted_ascii=$((ascii_code + shift))
      if $is_uppercase;
      then
        ((encrypted_ascii > 90)) && encrypted_ascii=$((encrypted_ascii - 26))
      else
        ((encrypted_ascii > 122)) && encrypted_ascii=$((encrypted_ascii - 26))
      fi

      encrypted_char=$(printf \\$(printf '%03o' $encrypted_ascii))
      encrypted_text+=$encrypted_char
    else
      encrypted_text+=$char
    fi
  done

  echo "$encrypted_text"
}

# Specify the amount of scrolling or use the default
if [ -n "$1" ];
then
  shift_amount=$1
else
  shift_amount=13
fi

# Encryption
while IFS= read -r line;
do
  encrypted_text=$(caesar_encrypt "$line" $shift_amount)
  echo "--------------------------------"
  echo " "
  echo "Entered Text: $line"
  echo "Encrypted Text: $encrypted_text"
  echo " "
  echo "--------------------------------"
  echo "Have A Nice Day"
done

