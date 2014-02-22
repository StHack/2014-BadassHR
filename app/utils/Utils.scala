package utils

/**
 * Created by Jordan on 22/02/14.
 */
object Utils {
  def isAllDigtis(str: String): Boolean = {
    return str forall Character.isDigit
  }

}
