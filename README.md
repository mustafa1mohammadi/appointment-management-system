# Read Me

## Project overview

Hi! this is a simple **Appointment Management** system project written in Java and Spring MVC. The front-end technologies used are JSP, CSS, JavaScript, JQuery and Ajax. There you can see a sample of how to do Rest call asynchronously. For database, MYSQL and Hibernate is used. 
Design and development Best Practices are used in this project.

Follow the configuration section on how to run the application.


## Configuration
After checking the Environment, you should first import the project into the IDE and then configure database. That's it.

## Environment
IDE: STS
Java version: 1.8
Dependency and build tool: Maven

## Database Setup

Under folder ***src/main/resources***, you can find the *application.properties* file that database configuration parameters are there. After creating a mysql database, things you need to change are 

 - Database name in the ***jdbc.url*** 
 - User Name in the ***jdbc.username***
 - Password in the ***jdbc.password***
The current database name is **appointment_db** with **aptUser** username and password. I'm running my database on WampServer.

## Running Application
In the STS, you should have a default Pivotal tc server. To run the application, right click on the project root directory and choose Run As -> Run on Server.

## Potential Error
After running application, if you face 404 error in root path of the app, right click on the project go to properties -> Deployment Web Assembly. Click on the Add button, and add the Maven Dependencies. Then clean server and publish again.