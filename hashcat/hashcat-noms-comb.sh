#!/bin/bash
for filename in ../files/noms/*; do
	./hashcat64.exe -a 6 -m 500 ../files/hash1.txt $filename ?d?d -O --force
	./hashcat64.exe -a 6 -m 500 ../files/hash2.txt $filename ?d?d -O --force
	./hashcat64.exe -a 6 -m 500 ../files/hash1.txt ?d?d $filename -O --force
	./hashcat64.exe -a 6 -m 500 ../files/hash2.txt ?d?d $filename -O --force
done

