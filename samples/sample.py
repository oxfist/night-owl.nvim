import random


def calculate_area(radius):
    pi = 3.14
    return pi * radius**2


def check_number(num):
    if num > 0:
        return "Positive"
    elif num < 0:
        return "Negative"
    else:
        return "Zero"


for i in range(5):
    print(i)

squares = [x**2 for x in range(10)]

student = {"name": "John", "age": 20, "grades": [85, 90, 78, 92, 88]}

print(student["name"])

try:
    print(5 / 0)
except ZeroDivisionError:
    print("Cannot divide by zero")


class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        return f"{self.name} says hello!"

class MyClass:
    my_var = 10

    @classmethod
    def my_class_method(cls):
        return cls.my_var

print(MyClass.my_class_method())

if __name__ == "__main__":
    print(calculate_area(5))
    print(check_number(-10))
    dog = Animal("Rex")
    print(dog.speak())
