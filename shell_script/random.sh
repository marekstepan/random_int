#!/usr/lib/jvm/java-11-openjdk-amd64/bin/java --source 11

import java.util.Random;
import java.util.Scanner;
import java.util.InputMismatchException;

public class RandomInt {
  public static Scanner scanner = new Scanner(System.in);

  public static void main(String[] args) {
    int userInput = 0;
    while (true) {
      System.out.println("Want a random integer from 1 to n? Enter n."
          + "\n"
          + "Want to exit? Enter some non-integer non-sense.");
      try {
        if(scanner.hasNextInt()){
          userInput = scanner.nextInt();
          scanner.nextLine();
        } else {
          System.out.println("Bye!");
          return;
        }
        if (userInput <= 1) {
          System.out.println("Funny funny!");
        } else {
          Random r = new Random();
          int randomInt = r.nextInt(userInput) + 1;
          System.out.println("Here's your stuff:"
              + "\n"
              + randomInt);
        }
      } catch (InputMismatchException e) {
        break;
      }
    }
  }
}
