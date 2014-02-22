package tasks
import play.core.StaticApplication
/**
 * Created by Jordan on 18/02/14.
 */

abstract class Task extends Runnable {
  val application = new StaticApplication(new java.io.File("."))
}

class SeedTest extends Task{
  def run{
    System.out.print("test task")
  }

}