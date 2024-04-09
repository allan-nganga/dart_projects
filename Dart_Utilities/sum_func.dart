import 'dart:io';

// Function that takes two numbers as input and returns the sum of those numbers
void main() {
  // Prompt user to enter the first number
  print('Enter the first number: ');
  // Read and parse the input as an integer
  int firstInt = int.parse(stdin.readLineSync()!);

  // Prompt user to enter the second number
  print('Enter the second number: ');
  // Read and parse the input as an integer
  int secondInt = int.parse(stdin.readLineSync()!);

  // Add the two integers together
  int sum = firstInt + secondInt;

  // Display the result
  print('The sum of $firstInt and $secondInt is $sum');
}