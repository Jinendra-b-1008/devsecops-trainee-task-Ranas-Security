## This project covers four basic tasks:
1. Log file analysis using a Bash script.
2. Creating and running a Docker container as a non-root user.
3. Git Workflow and Documentation.
4. Creation of Dockerfile with Security point of view.

### Task 1 : Log File Analysis 

**Objective**
 ```Create a Bash script that:
	Accepts a log file as an argument
	Counts the Total number of lines
	Number of lines containing INFO, WARN, ERROR 
Solution Approach - 
a. Created a Bash script named log_checker.sh.
    The script takes the log file name as an argument (e.g., example.log).
b. If the argument is missing, the script displays:
    "Error: No log file provided"
c. If the file does not exist, it shows an appropriate error message.
d. Used the command:
    wc -l <filename> → to count the total number of lines.
Used:
    grep -c "INFO" <filename>
    grep -c "WARN" <filename>
    grep -c "ERROR" <filename>
    to count lines containing each specific keyword.
e. To Run Task-1
    Give execute permission to the script:
    chmod +x log_checker.sh
f. Run the script by passing the log file as an argument:
    ./log_checker.sh example.log
    Expected Output:
    Total lines: 12
    INFO lines : 5
    WARN lines : 3
    ERROR lines: 2 ```

**Task-2 : Environment Information Script, Dockerfile creation and execution**
- Solution Approach:
A. Bash script (script.sh) was created with the following functions:
	a. whoami → Prints the name of the current user
	b. pwd → Shows the current working directory
	c. ${APP_ENV:-default} →
		Prints the value of the APP_ENV environment variable
    	If APP_ENV is not set, it prints "default"
	e. To Run Task-1
   		Give execute permission to the script:
  		chmod +x log_checker.sh

Dockerfile (Task 2) – Running Script as Non-Root User

#### Objective :
Create a Docker image that:
A. Uses a lightweight base image
B. Creates a non-root user
C. Sets a working directory
D. Copies the script into the container
E. Runs the script as a non-root user for better security
Solution Approach
``` The Dockerfile accomplishes the following:
    Uses a slim base image
	Example: python:3.12-slim (lightweight and secure)
    Creates a non-root user (appuser)
	This prevents the container from running with unnecessary root privileges.
    Sets working directory to /app
	All files and commands run inside this folder
    Copies the script (script.sh) into the container.
    Gives execute permission to the script, switch non root user
    Runs the script when the container starts using CMD/ENTRYPOINT ```

``` ###Creating Image and Running Container
    Create Image : docker build <image-name> .
    Run container : docker run --rm <image-name>
    Custom env :  docker run --rm -e  APP_ENV=production <image-name>

    To check the images created use : docker images
    To check the running containers : docker ps
    To check the stopped containers : docker ps -a   ```







