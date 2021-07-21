#!/bin/bash
start=`date +%s`

printf "\nRunning the C version : \n"
rm -f a.out && gcc mergesort.c && ./a.out && rm -f a.out

printf "\nRunning the Python version : \n"
python3 mergesort.py

printf "\nRunning the Haskell version : \n"
rm -f mergesort && ghc mergesort.hs && ./mergesort

printf "\nRunning the Javascript version : \n"
node mergesort.js

printf "\nRunning the PHP version : \n"
php mergesort.php

printf "\nRunning the Scala version : \n"
scala -nc mergesort.scala

printf "\nRunning the C++ version : \n"
g++ -std=c++17 mergesort.cpp && ./a.out && rm -f a.out

printf "\nRunning the Go version : \n"
rm -f mergesort && go build mergesort.go && ./mergesort

printf "\nRunning the Bash version : \n"
bash mergesort.sh

printf "\nRunning the Dart Version : \n"
dart mergesort.dart

printf "\nRunning the TypeScript version : \n"
tsc mergesort.ts --outDir out && node mergesort.js

printf "\nRunning the Swift version : \n"
swift mergesort.swift

printf "\nRunning the Objective C version : \n"
clang -fobjc-arc -framework Foundation mergesort.m -o mergesort && ./mergesort

end=`date +%s`
runtime=$((end-start))
printf "\n"
echo "Script ran in $runtime seconds"
