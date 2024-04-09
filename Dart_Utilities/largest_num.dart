void main() {
  //Example list of numbers
  List<int> numbers = [10, 5, 15, 30, 25];

  //Find the largest number in the list
  int largestNumber = findLargestNumber(numbers);

  //Output the result
  print('The largest number in the list is $largestNumber');
}

int findLargestNumber(List<int> numbers) {
  // Assume the first number is the largest
  int largest = numbers[0];

  //Loop through the list to find the largest number
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}