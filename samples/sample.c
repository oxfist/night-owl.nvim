#include <stdio.h>
#include <string.h>

// Struct
typedef struct {
    char foo[50];
    int bar;
} FooBar;

// Function
void printFooBar(FooBar foobar) {
    printf("Foo: %s, Bar: %d\n", foobar.foo, foobar.bar);
}

// Array
int baz[5] = {1, 2, 3, 4, 5};

// Loop
void printArray(int arr[], int size) {
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

// Pointers
void swap(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main() {
    // Using the struct and function
    FooBar foobar;
    strcpy(foobar.foo, "Lorem Ipsum");
    foobar.bar = 123;
    printFooBar(foobar);

    // Using the array and loop
    printArray(baz, 5);

    // Using pointers
    int x = 10;
    int y = 20;
    swap(&x, &y);
    printf("x: %d, y: %d\n", x, y);

    return 0;
}
