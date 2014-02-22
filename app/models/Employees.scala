package models

import org.anormcypher.Cypher
import play.api.mvc._
import play.Logger

/**
 * Created by Jordan on 20/02/14.
 */
object Employees {

  def getAll(): List[(String)] = {
    val req = Cypher("START n=node(*) WHERE n:BAS RETURN n.name as name")
    return req.apply().map(row =>(row[String]("name"))).toList
  }

  def getAllReport(name :String): Seq[String]= {
    val req = Cypher("START n=node(*), m=node(*) WHERE n:BAS AND n.name={name} MATCH n<-[:WORKS_FOR]-m RETURN m.name as name")
      .on(("name",name))
      req.apply().map(row => row[String]("name"))
  }

  def getAllReport(name :String, depthIndex :String): Seq[String] = {
    try{
      val strReq = "MATCH (n)<-[:WORKS_FOR*1.."+depthIndex+"]-(m) WHERE n:BAS AND n.name={name} RETURN m.name as name"
      val req = Cypher(strReq).on(("name",name))
      req.apply().map(row => row[String]("name"))
    }catch{
      case re: RuntimeException =>
        val tmpSeq :List[String] = List(re.toString)
        return tmpSeq
      case e: Exception =>
        val tmpSeq :List[String] = List(e.toString)
        return tmpSeq
    }

  }

  def getAllReport(name :String, depthIndex :String, skill :String): Seq[String] = {
    val strReq = "MATCH (n)<-[:WORKS_FOR*1.."+depthIndex+"]-(m) WHERE n:BAS AND {skill} IN (m.skill) AND n.name={name} RETURN m.name as name"
    val req = Cypher(strReq).on(("name",name),("skill",skill))
    req.apply().map(row => row[String]("name"))
  }
}
