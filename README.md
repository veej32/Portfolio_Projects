# Portfolio_Projects
-----------------------
Deployment Instructions for Windows 10
-----------------------
Bitter & Buzzlet - common requirements
    - Apache Netbeans 12.5 installed and configured with the following plugins installed and active:
	-  HTML5, Java SE, Tools, PHP, Java Web and EE, Service Registry.
    - Wampserver 3.2.3 installed and running.

Bitter - Project Deployment on your local machine
    - Requirements and instructions 
	- Extract the www file from Bitter_AlexHunter.zip
	- Add the files from the www file to your localhost's www file (which should be in your wamp64 folder)
	- Import the __AlexHunter__.sql database file to phpMyAdmin as a MySQL database entitled bitter-alexhunter
	- In Apache Netbeans, add a new php project with existing sources using your local machine's www folder
	- if needed, open connect.php in the source files and replace the defined constants with the appropriate phpMyAdmin credentials
		- if you are using the root user, you will probably just need to change the password if your's isn't blank.


