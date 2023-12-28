import java.util.Scanner;
public class ExceptionHandling 
{
 public static void main(String[] args) 
 {
 Scanner scanner = new Scanner(System.in);
 try 
 {
 System.out.print("Enter the numerator (positive): ");
 int num = scanner.nextInt();
 System.out.print("Enter the denominator (positive non-zero): ");
 int den = scanner.nextInt();
 if (num < 0 || den < 0 || den == 0) 
 {
 throw new ArithmeticException("Negative input or division by zero exception");
 }
 double res = (double) num / den;
 System.out.println("Result of division: " + res);
 } 
 catch (ArithmeticException ae) 
 {
 System.out.println("Exception: " + ae.getMessage());
 } 
 catch (Exception e) 
 {
 System.out.println("Invalid input (Expected input as Integers)");
 } 
 }
}
