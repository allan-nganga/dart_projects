class Student {
  String name;
  int age;
  String grade_level;

  //Constructor
  Student(this.name, this.age, this.grade_level);

  //Method to display information
  void displayInfo() {
    print('Student name: $name');
    print('Student age: $age');
    print('Student grade level: $grade_level');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  //Constructor
  Teacher(this.name, this.age, this.subject);

  //Method to display information
  void displayInfo() {
    print('Teacher name: $name');
    print('Teacher age: $age');
    print('Teacher subject: $subject');
  }
}

class School {
  void createAndPrintPersons() {
    // Creating a student object
    var student = Student('John Doe', 16, '10th Grade');

    //Creating a teacher object
    var teacher = Teacher('Cristiano Ronaldo', 30, 'Physics');

    //Calling  methods to print information
    student.displayInfo();
    teacher.displayInfo();
  }
}

void main() {
  //Creating an instance of the student class
  var school = School();
  school.createAndPrintPersons();
}
