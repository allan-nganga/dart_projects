class Student {
  String name;
  int age;
  int academic_year;
  int academic_result;

  Student(this.name, this.age, this.academic_year, this.academic_result);

  void final_report() {
    if (academic_result > 70) {
      print("You have passed!");
    } else if (academic_result < 40) {
      print("You have failed!");
    } else {
      print("Your Performance was average!");
    }
  }
}

void main() {
  var marks = Student('John Doe', 25, 2024, 60);

  print('Name: ${marks.name}');
  print('Age: ${marks.age}');
  print('Academic Year: ${marks.academic_year}');
  print('Academic Result: ${marks.academic_result}');

  marks.final_report();
}
