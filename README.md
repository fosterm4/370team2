# Team 2 Project

With our web application we would be solving the difficulty of finding somewhere new to eat in Fort Collins.  We would have a new website that you could sort by kinds of food, ratings of restaurants, etc.  This website would make it not only easy but exciting to try something new in the Fort Collins area. Our project containerizes resources for this  web app, as well helping with smooth cross platform integration of the operating system which you could integrate on Linux, Windows, or Mac.  We would have a database container separate from our website making it secure, accessible, and more compartmentalized.  This would give us the ability to add, remove and edit the front and backend sides of the application. The current state of our program is our Restful server will echo back whatever is sent in the body.

<h3>TO BUILD/COMPILE: </h3>
<code>mvn package</code>

<h3>TO RUN: </h3>
<code>java -cp target/370team2-1.0-SNAPSHOT-jar-with-dependencies.jar RestfulServer</code>

# Docker

<h3>TO BUILD AND RUN DOCKER IMAGE: </h3>
<code> docker build -t project . && docker run  -t  project</code>
