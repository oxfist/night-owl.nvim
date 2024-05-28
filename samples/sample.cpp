#include <iostream>
#include <vector>
#include <map>
#include <string>

// Class
class FooBar {
public:
    std::string foo;
    int bar;

    FooBar(std::string foo, int bar) : foo(foo), bar(bar) {}

    void print() {
        std::cout << "Foo: " << foo << ", Bar: " << bar << std::endl;
    }
};

// Function
void printVector(const std::vector<int>& vec) {
    for (int i : vec) {
        std::cout << i << " ";
    }
    std::cout << std::endl;
}

int main() {
    // Using the class
    FooBar foobar("Lorem Ipsum", 123);
    foobar.print();

    // Using a vector
    std::vector<int> baz = {1, 2, 3, 4, 5};
    printVector(baz);

    // Using a map
    std::map<std::string, std::string> m;
    m["foo"] = "bar";
    m["baz"] = "qux";

    // Using control structures
    for (const auto& pair : m) {
        std::cout << "Key: " << pair.first << ", Value: " << pair.second << std::endl;
    }

    if (m.find("foo") != m.end()) {
        std::cout << "Found foo: " << m["foo"] << std::endl;
    } else {
        std::cout << "Did not find foo" << std::endl;
    }

    return 0;
}
