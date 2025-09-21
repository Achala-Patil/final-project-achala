#!/usr/bin/env bash
# simple-interest.sh: calculate simple interest
# Usage: ./simple-interest.sh PRINCIPAL RATE TIME
# Example: ./simple-interest.sh 1000 5 2

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal rate(%) time(years)"
  exit 1
fi

P="$1"
R="$2"
T="$3"

SI=$(awk "BEGIN{printf \"%.2f\", ($P*$R*$T)/100}")

echo "Principal: $P"
echo "Rate: $R%"
echo "Time (years): $T"
echo "Simple Interest: $SI"
