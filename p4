import java.util.Scanner;
// Base class
class Person {
 String name;
 int age;
 String gender;
 // Constructor
 Person(String name, int age, String gender) {
 this.name = name;
 this.age = age;
 this.gender = gender;
 }
 // Display details method
 void displayDetails() {
 System.out.println("Name: " + name);
 System.out.println("Age: " + age);
 System.out.println("Gender: " + gender);
 }
}
// Derived class Employee
class Employee extends Person {
 String employeeId;
 // Constructor
 Employee(String name, int age, String gender, String employeeId) {
 super(name, age, gender); // Call the constructor of the base class
 this.employeeId = employeeId;
 }
 // Display details method, overriding base class method
 @Override
 void displayDetails() {
 super.displayDetails(); // Call the method of the base class
 System.out.println("Employee ID: " + employeeId);
 }
}
// Derived class Student
class Student extends Person {
 String studentId;
 // Constructor
 Student(String name, int age, String gender, String studentId) {
 super(name, age, gender); // Call the constructor of the base class
 this.studentId = studentId;
 }
 // Display details method, overriding base class method
 @Override
 void displayDetails() {
 super.displayDetails(); // Call the method of the base class
 System.out.println("Student ID: " + studentId);
 }
}
public class pg4 {
 public static void main(String[] args) {
 Scanner scanner = new Scanner(System.in);
 // Create and display details for five employees
 for (int i = 1; i <= 5; i++) {
 System.out.println("Enter details for Employee " + i);
 System.out.print("Name: ");
 String name = scanner.nextLine();
 System.out.print("Age: ");
 int age = scanner.nextInt();
 scanner.nextLine(); // Consume the newline character
 System.out.print("Gender: ");
 String gender = scanner.nextLine();
 System.out.print("Employee ID: ");
 String employeeId = scanner.nextLine();
 Employee employee = new Employee(name, age, gender, 
employeeId);
 employee.displayDetails();
 System.out.println("------------------------\n");
 }
 // Create and display details for five students
 for (int i = 1; i <= 5; i++) {
 System.out.println("Enter details for Student " + i);
 System.out.print("Name: ");
 String name = scanner.nextLine();
 System.out.print("Age: ");
 int age = scanner.nextInt();
 scanner.nextLine(); // Consume the newline character
 System.out.print("Gender: ");
 String gender = scanner.nextLine();
 System.out.print("Student ID: ");
 String studentId = scanner.nextLine();
 Student student = new Student(name, age, gender, studentId);
 student.displayDetails();
 System.out.println("------------------------\n");
 }
 scanner.close();
 }
}
