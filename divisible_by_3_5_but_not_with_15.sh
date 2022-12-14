#!/bin/bash
start=1
end=100

for ((i = start; i<= end; i++));  do
        if (( ($i % 3 ==0 || $i % 5 == 0) && ( $i % 15 != 0) )); then
                echo "$i"
        fi
done
