# Portfolio_Projects
--------------------------------------
Deployment Instructions for Windows 10
--------------------------------------
Bitter & Buzzlet common requirements
    - Have Apache Netbeans 12.5 installed and configured with the following plugins installed and active:
	-  HTML5, Java SE, Tools, PHP, Java Web and EE, Service Registry
    - Wampserver 3.2.3 installed and running
    - MySQL installed and configured (might come with Wampserver)

Bitter - Project Deployment on your local machine
    - Requirements and instructions 
	- Extract the www file from Bitter_AlexHunter.zip
	- Add the files from the www file to your localhost's www file (which should be in your wamp64 folder)
	- Import the __AlexHunter__.sql database file to phpMyAdmin as a MySQL database entitled bitter-alexhunter
	- In Apache Netbeans, add a new php project with existing sources using your local machine's www folder
	- if needed, open connect.php in the source files and replace the defined constants with the appropriate phpMyAdmin credentials
		- if you are using the root user, you will probably just need to change the password if your's isn't blank
	
	- You might encounter other conflicts/issues
	    - If you cannot solve them on you own, feel free to reach out to me and ask questions

Buzzlet - Project Deployment on your local machine
    - If you don't already have it, extract the jakarta.jakartaee-web-api-9.0.0.jar file and
      place it in your NetBeans's modules folder, e.g.  
	C:\Program Files\NetBeans-12.5\netbeans\enterprise\modules 
    - Download and install Java Development Kit 8 (JDK 8)
    - Extract the Buzzlet project from Buzzlet_AlexHunter.zip
	- if it has a build folder, delete it
    - In Apache Netbeans, create a new Java Web Application with Existing Sources
	- Use the location of the extracted Buzzlet application folder
	- For Server and Settings, use the following:
		Add to Enterprise Application:  -- default value
		Server: 			GlassFish Server
		Java EE Version:		Jakarta EE 8 Web
		Context Path:			-- default value  
    - When finished, the Buzzlet2 Project should appear under your projects window
	- Right-click the Library file and add a new Library: Add Java EE Web 8 API library
	- Right-click the Library file and add a new jar file - select the mysql-connector-java-8.0.27.jar file
    - Go to phpMyAdmin and import a new database
	- Use the buzzletdb.sql file from the Buzzlet source packages and name it buzzletdb 
    - Open the ConnectionFactory.java file in the DataLayer package
        - If needed, update the username, password, and dbUrl credential constants to use your buzzlet database information
    - Right-click on the project and select Resolve Reference Problems
    - Clean and build the project 
    - Run the project even if the clean+build had errors
	- You might need to refresh the page a few times

    - If you have unresolved issues you cannot fix on your own, feel free to contact me for help

Orangutan Website
- Simply extract the files and run index.html in a web browser such as Google Chrome
