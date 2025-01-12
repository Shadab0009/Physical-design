#include <stdio.h>

// Function declaration
long add(int a, int b);

int main() {
    int a = 4, b = 5;  // Declare and initialize variables a and b
    printf("Result of a and b is %ld\n", add(a, b));  // Use %ld for long
    return 0;  // Return an integer from main
}

// Function definition
long add(int a, int b) {
    int i;
    i = a + b;
    return i;  // The return type matches the function definition
}

