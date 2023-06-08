#!/usr/bin/python3
import sys
from calculator_1 import add, sub, mul, div

def print_usage_error():
    print("Usage: ./100-my_calculator.py <a> <operator> <b>")
    sys.exit(1)

def print_operator_error():
    print("Unknown operator. Available operators: +, -, * and /")
    sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print_usage_error()

    a = int(sys.argv[1])
    operator = sys.argv[2]
    b = int(sys.argv[3])

    if operator == '+':
        result = add(a, b)
    elif operator == '-':
        result = sub(a, b)
    elif operator == '*':
        result = mul(a, b)
    elif operator == '/':
        result = div(a, b)
    else:
        print_operator_error()

    print(f"{a} {operator} {b} = {result}")
    sys.exit(0)
