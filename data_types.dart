void main() {
  //Declaring variables of different data types
  int age = 20; //stores an integer datatype
  double num1 = 105.2; //stores a double datatype
  String name = "John Doe"; //stores a string datatype
  List<String> names = [
    "John",
    "Doe",
    "Peter",
    "Brian"
  ]; //Stores a list of names with string datatype
  //Map stores a set of values as key-value pairs in my case name and age
  Map<String, int> ages = {
    'John': 25,
    'Doe': 30,
    'Chris': 20,
  };
  print(age);
  print(num1);
  print(name);
  print(names);
  print(ages);
}
