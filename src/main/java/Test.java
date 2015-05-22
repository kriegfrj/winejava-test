
import java.io.File;
import java.io.IOException;

public class Test {

  public void reset() {}

  public static void main(String[] args) {
    try {
      System.err.println("It worked!");
      System.err.println("Separator: " + File.separator);
      System.err.println("Current dir: " + new File(".").getCanonicalPath());
    } catch (IOException e) {
      System.err.println("An unexpected error occurred: " + e);
      e.printStackTrace();
    }
  }

  
}
