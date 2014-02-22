name := "adventuredex"

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
  jdbc,
  anorm,
  cache,
  "org.seleniumhq.webdriver" % "webdriver-selenium" % "0.9.7376",
  "org.seleniumhq.webdriver" % "webdriver-htmlunit" % "0.9.7376",
  "org.anormcypher" %% "anormcypher" % "0.4.4"
)

resolvers ++= Seq(
  "anormcypher" at "http://repo.anormcypher.org/"
)

play.Project.playScalaSettings


