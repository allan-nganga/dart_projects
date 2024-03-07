dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    return null; //Return null if the list empty
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(
      'First element of numbers list: ${getFirstElement(numbers)}'); //Output will be 1

  List<String> fruits = [];
  print('First element of fruits list: ${getFirstElement(fruits)}');//Output will be null
}
