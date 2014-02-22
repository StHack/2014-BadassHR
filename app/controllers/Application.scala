package controllers

import play.api._
import play.api.mvc._
import models.{Skills, Employees}
import utils.Utils._
import utils.Utils

object Application extends Controller {

  def index = Action {
//    for(e <- Employees.getAll()){
//      for(s <- Skills.getAllByEmployee(e)){
//        Logger.debug(e + ":" + s.toString())
//      }
//
//    }
    Ok(views.html.index(null,null,null))
  }

  def search = Action {
    request =>
      val pseudo = request.body.asFormUrlEncoded.get("pseudo")(0)
      val skill = request.body.asFormUrlEncoded.get("skill")(0)
      val depthIndex = request.body.asFormUrlEncoded.get("depthIndex")(0)
        if(skill.isEmpty){
          Ok(views.html.index(pseudo,Employees.getAllReport(pseudo,depthIndex).toList,null))
        }else{
          Ok(views.html.index(pseudo,Employees.getAllReport(pseudo,depthIndex,skill).toList,null))
        }




  }

}