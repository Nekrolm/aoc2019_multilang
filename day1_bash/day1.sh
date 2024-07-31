#!/bin/bash

calculate_total_fuel () {
    rest_mass=$1
    result=0
    for ((; rest_mass > 0 ;))
    do
        add_fuel=$((rest_mass / 3 - 2))
        for ((; add_fuel > 0; ))
        do
            result=$((result + add_fuel))
            break;
        done
        rest_mass=$add_fuel
    done
    echo $result 
}

result=0
while read mass;
do 
    # uncomment for part 1
    # result=$((result + mass / 3 - 2))
    fuel=$(calculate_total_fuel $mass)
    echo "fuel $fuel for mass $mass"
    result=$((result + fuel))
done

echo $result