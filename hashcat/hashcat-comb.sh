#!/bin/bash

for filename in ../files/comb/*; do
	./hashcat64.exe -a 6 -m 500 ../files/hash1.txt $filename ?d?d?d -O 
	./hashcat64.exe -a 6 -m 500 ../files/hash2.txt $filename ?d?d?d -O 
	./hashcat64.exe -a 7 -m 500 ../files/hash1.txt ?d?d?d $filename -O 
	./hashcat64.exe -a 7 -m 500 ../files/hash2.txt ?d?d?d $filename -O 
done

for filename in ../files/comb/*; do
	./hashcat64.exe -a 6 -m 500 ../files/hash1.txt $filename ?d?d?d?d -O 
	./hashcat64.exe -a 6 -m 500 ../files/hash2.txt $filename ?d?d?d?d -O 
	./hashcat64.exe -a 7 -m 500 ../files/hash1.txt ?d?d?d?d $filename -O 
	./hashcat64.exe -a 7 -m 500 ../files/hash2.txt ?d?d?d?d $filename -O 
done
