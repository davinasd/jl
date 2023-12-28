import java.util.Scanner;
// Base class
abstract class Bank {
 protected String name;
 protected long accountNumber;
 protected double balance;
 // Member functions
 void readDetails() {
 Scanner scanner = new Scanner(System.in);
 System.out.print("Enter Name: ");
 name = scanner.nextLine();
 System.out.print("Enter Account Number: ");
 accountNumber = scanner.nextLong();
 System.out.print("Enter Balance: ");
 balance = scanner.nextDouble();
 }
 void displayDetails() {
 System.out.println("Name: " + name);
 System.out.println("Account Number: " + accountNumber);
 System.out.println("Balance: " + balance);
 }
 // Abstract method for calculating interest
 abstract void calculateInterest();
}
// Derived class CityBank
class CityBank extends Bank {
 // Implementation of the calculateInterest method
 void calculateInterest() {
 double rate = 0.05; // City Bank interest rate
 double interest = balance * rate;
 System.out.println("Interest Earned at City Bank: " + interest);
 }
}
// Derived class SBIBank
class SBIBank extends Bank {
 // Implementation of the calculateInterest method
 void calculateInterest() {
 double rate = 0.06; // SBI Bank interest rate
 double interest = balance * rate;
 System.out.println("Interest Earned at SBI Bank: " + interest);
 }
}
// Derived class CanaraBank
class CanaraBank extends Bank {
 // Implementation of the calculateInterest method
 void calculateInterest() {
 double rate = 0.04; // Canara Bank interest rate
 double interest = balance * rate;
 System.out.println("Interest Earned at Canara Bank: " + 
interest);
 }
}
public class Banks {
 public static void main(String[] args) {
 CityBank cityBank = new CityBank();
 SBIBank sbiBank = new SBIBank();
 CanaraBank canaraBank = new CanaraBank();
 System.out.println("Enter details for City Bank account:");
 cityBank.readDetails();
 cityBank.displayDetails();
 cityBank.calculateInterest();
 System.out.println("\nEnter details for SBI Bank account:");
 sbiBank.readDetails();
 sbiBank.displayDetails();
 sbiBank.calculateInterest();
 System.out.println("\nEnter details for Canara Bank account:");
 canaraBank.readDetails();
 canaraBank.displayDetails();
 canaraBank.calculateInterest();
 }
}
