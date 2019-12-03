#!/bin/bash
for filename in ../files/noms/*; do
	./hashcat64.exe -a 1 -m 500 ../files/hash1.txt $filename ../files/anys.txt -O --force
	./hashcat64.exe -a 1 -m 500 ../files/hash2.txt $filename ../files/anys.txt -O --force
	./hashcat64.exe -a 1 -m 500 ../files/hash1.txt ../files/anys.txt $filename -O --force
	./hashcat64.exe -a 1 -m 500 ../files/hash2.txt ../files/anys.txt $filename -O --force
done

