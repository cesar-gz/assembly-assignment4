// Name: Cesar Gutierrez
// CWID: 886646686
// Email: cesarg7@csu.fullerton.edu

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

void get_sides(double* side1, double* side2, double* side3){
    
    char input[10000];
    fgets(input,10000,stdin);
    side1 = (double*)input;
    fgets(input,10000,stdin);
    side2 = (double*)input;
    fgets(input,10000,stdin);
    side3 = (double*)input;
    //printf("%s", side3);
    
}

