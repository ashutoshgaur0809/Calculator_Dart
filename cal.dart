import 'dart:io';

class Calculator {
  int add(int x, int y) {
    return x + y;
  }

  int minus(int x, int y) {
    return x - y;
  }

  int mul(int x, int y) {
    return x * y;
  }

  double div(int x, int y) {
    if (y == 0) {
      print("Error: Division by zero is not allowed.");
      return 0.0; // Return 0.0 or handle it as needed
    }
    return x / y;
  }
}

void main() {
  var calculator = Calculator();
  print("Do you want to perform a calculator task? Enter 0 for No or 1 for Yes:");

  // Reading input as a string and parsing to int
  int flag = int.parse(stdin.readLineSync()!);

  if (flag == 1) {
    print("Okay, you want to open the Calculator!!!!");
    print("Now choose your calculator task -> 1. + 2. - 3. * 4. /");

    int sign = int.parse(stdin.readLineSync()!);

    // Use a switch statement for better readability
    switch (sign) {
      case 1:
        print("Enter 2 numbers for addition:");
        break;
      case 2:
        print("Enter 2 numbers for subtraction:");
        break;
      case 3:
        print("Enter 2 numbers for multiplication:");
        break;
      case 4:
        print("Enter 2 numbers for division:");
        break;
      default:
        print("Invalid operation.");
        return; // Exit if invalid
    }

    // Reading numbers
    print("Number 1: ");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Number 2: ");
    int num2 = int.parse(stdin.readLineSync()!);

    double ans;

    // Perform the operation based on user choice
    switch (sign) {
      case 1:
        ans = calculator.add(num1, num2).toDouble();
        print("Sum is -> $ans");
        break;
      case 2:
        ans = calculator.minus(num1, num2).toDouble();
        print("Difference is -> $ans");
        break;
      case 3:
        ans = calculator.mul(num1, num2).toDouble();
        print("Product is -> $ans");
        break;
      case 4:
        ans = calculator.div(num1, num2);
        print("Quotient is -> $ans");
        break;
    }
  } else {
    print("Okay, it's your choice to quit the calculator.");
  }
}
