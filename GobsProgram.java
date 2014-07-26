import java.io.*;

public class GobsProgram {
  public static void main(String[] args) throws IOException {
    BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
    String s = null;
    while (s == null) {
      System.out.println("Gob's Program: Y/N?");
      s = in.readLine();
      if (s.startsWith("Y") || s.startsWith("y")) {
        while (true) {
          System.out.print("Penus  ");
        }
      }
      if (s.startsWith("N") || s.startsWith("n")) {
        System.exit(0);
      }
      s = null;
    }
  }
}
