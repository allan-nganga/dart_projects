void main() {
  int a = 18;
  int b = 0;
  int res;

  try {
    res = a ~/ b;
    print("Result is $res");
  }
  // It returns the built-in exception related to the occuring exception
  catch(ex) {
    print(ex);
  }
}