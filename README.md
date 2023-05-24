Cinema Society 

Main purpose: Developing, deploying and consuming web services. 

A film database system implemented using: 

* MVC (Model-View-Controller) Architecture, using JSP and Servlets to implement 
* RestFul API

*********************************************************************
Some general guidance on how to invoke the programs and find the web service and web application
*********************************************************************

Note: - The HTTP interface and RestFul API works with Tomcat 9.0. 
It is assumed the Port for Tomcat is set to 8081. 
For cloud computing part we have used JDK 8

		        MVC (called "MVC")

To open and invoke MVS application it is very simple.

Once the project thas been imported to Eclipse, 
you will see "Java resources" folder which contains 
the subfolders ----> "src/main/java" following this path of folders,
3 packages will be found "controllers", "database", "model".
Under the controllers package we can find the servlets that communicates 
with the database and the client. 

TO RUN the application, sipmly run the file "FilmController.java", 
this will trigger the main home page to open and retrive all the films 
from the database. Once the web page is on and active, every functionality
can be accessed trough that main web page. 

To access JSP files, follow this path -----> "src/main/wwebapp", 
"index.jsp", "insertFilm.jsp", "updateFilm.jsp" can be found here.

