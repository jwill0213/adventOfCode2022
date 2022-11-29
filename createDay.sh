#!/bin/sh

PROVIDED_DAY=$1
TITLE=$2

if [ "$PROVIDED_DAY" -lt 10 ]; then
    DAY="0${PROVIDED_DAY}"
else
    DAY="$PROVIDED_DAY"
fi

mkdir ./src/main/kotlin/Day_"$DAY"/

cp -r Main.kt ./src/main/kotlin/Day_"$DAY"/Main.kt

touch ./src/main/kotlin/Day_"$DAY"/README.md
touch ./src/main/kotlin/Day_"$DAY"/input.txt
printf "# Advent Of Code 2022 Day %s: %s\n\n## Part 1\nTBD\n\n---\n## Part 2\nTBD" "$DAY" "$TITLE" > ./src/main/kotlin/Day_"$DAY"/README.md

printf "\n\n[**Day %s**](/src/main/kotlin/Day_%s/) - [AdventOfCode](https://adventofcode.com/2022/day/%s)" "$PROVIDED_DAY" "$DAY" "$PROVIDED_DAY" >> README.md