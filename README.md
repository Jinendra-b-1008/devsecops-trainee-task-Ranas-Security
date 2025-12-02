1.Log file analysis using a Bash script.
2.Creating and running a Docker container as a non-root user.
3.Git Workflow and Documentation.
4.Creation of Dockerfile with Security point of view.

Task 1: Log File Analysis
Objective

Create a Bash script that:
Accepts a log file as an argument

Counts:
Total number of lines

Number of lines containing INFO, WARN, ERROR

Solution Approach - 

Created a Bash script named log_checker.sh.
The script takes the log file name as an argument (e.g., example.log).

If the argument is missing, the script displays:
"Error: No log file provided"

If the file does not exist, it shows an appropriate error message.

Used the command:
wc -l <filename> → to count the total number of lines.

Used:
grep -c "INFO" <filename>
like used WARN and ERROR
to count lines containing each specific keyword.

To Run Task-1

Give execute permission to the script:
chmod +x log_checker.sh


Run the script by passing the log file as an argument:
./log_checker.sh example.log

Expected Output
Total lines: 12
INFO lines : 5
WARN lines : 3
ERROR lines: 2

