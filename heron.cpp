// Name: Cesar Gutierrez
// CWID: 886646686
// Email: cesarg7@csu.fullerton.edu

#include <stdio.h>
#include <iostream>
using namespace std;

extern "C" long triangle();

int main(){
	
    long returnValue;
	cout << endl;
	cout << "Welcome to CPSC 240 Assignment 4 brought to you by Cesar Gutierrez." << endl;
    returnValue = triangle();
    cout << "Heron received this number: " << returnValue << "." << endl;
    cout << "Have a nice day. The program will return control to the operating system." << endl;
	return 0;
}