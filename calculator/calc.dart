import 'dart:io';

// Function that takes two numbers as input
void main() {
  // Print "Simple Calculator" on the console
  print("Simple calculator!");
  
  // Prompt user to enter an integer
  print('Enter the first number: ');
  // Read and parse the input as an integer
  double firstInt = double.parse(stdin.readLineSync()!);

  // Prompt user to enter the second number
  print('Enter the second number: ');
  // Read and parse the input as an integer
  double secondInt = double.parse(stdin.readLineSync()!);
  
  print('Select an operation:');
  print('1. Addition (+)');
  print('2. Subtraction (-)');
  print('3. Multiplication (*)');
  print('4. Division (/)');
  
  // Read the user's choice of operation
  int choice = int.parse(stdin.readLineSync()!);
  
  double result;

  // Begin a switch statement based on the user's choice
  switch (choice) {
    case 1: // Case 1: Addition
      result = firstInt + secondInt; // Perform addition
      print('Result: $firstInt + $secondInt = $result');
      break; // Exit the switch statement
  
    case 2: // Case 2: Subtraction
      result = firstInt - secondInt; //Perform subtraction
      print('Result: $firstInt - $secondInt = $result');
      break;
      
    case 3: // Case 3: Multiplication
      result = firstInt * secondInt; // Perform Multiplication
      print('Result: $firstInt * $secondInt = $result');
      break;
      
    case 4: // Case 4: Division
      if (secondInt !=0) { // Check for division by zero
        result = firstInt / secondInt; //Perform division if denominator is not zero
        print('Result: $firstInt / $secondInt = $result');
      } else {
        print("Error: Division by zero is not allowed!"); // Display error message for division by zero
      }
      break;

    default:
      print('Invalid choice. Please enter a number between 1 and 4'); // Display an error message
  }
}