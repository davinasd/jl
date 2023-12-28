
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the length of the rectangle: ");
        double length = scanner.nextDouble();
        System.out.print("Enter the width of the rectangle: ");
        double width = scanner.nextDouble();
        double area = calculateRectangleArea(length, width);
        System.out.println("Area of the rectangle: " + area);

        System.out.print("Enter the size of the arrays: ");
        int size = scanner.nextInt();
        int[] array1 = new int[size];
        int[] array2 = new int[size];
        System.out.println("Enter elements of array1: ");
        for (int i = 0; i < size; i++) {
            array1[i] = scanner.nextInt();
        }
        System.out.println("Enter elements of array2: ");
        for (int i = 0; i < size; i++) {
            array2[i] = scanner.nextInt();
        }
        int[] result = multiplyArrays(array1, array2);
        System.out.println("Multiplication Result: " + Arrays.toString(result));

        System.out.println("Enter the size of the array to be sorted: ");
        size = scanner.nextInt();
        int[] numbers = new int[size];
        System.out.println("Enter elements of the array: ");
        for (int i = 0; i < size; i++) {
            numbers[i] = scanner.nextInt();
        }
        bubbleSortAscending(numbers);
        System.out.println("Ascending Order: " + Arrays.toString(numbers));

        bubbleSortDescending(numbers);
        System.out.println("Descending Order: " + Arrays.toString(numbers));

        scanner.close();
    }

    public static double calculateRectangleArea(double length, double width) {
        return length * width;
    }

    public static int[] multiplyArrays(int[] array1, int[] array2) {
        int length = array1.length;
        int[] result = new int[length];
        for (int i = 0; i < length; i++) {
            result[i] = array1[i] * array2[i];
        }
        return result;
    }

    public static void bubbleSortAscending(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }

    public static void bubbleSortDescending(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] < arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }
}
