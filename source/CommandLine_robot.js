// This command will run all tests in the "my_test.robot" file.
robot mon_test.robot
// --variable: This option allows you to define variables that can be used in tests.
robot -d results mon_test.robot
// This command allows you to use the ${url} variable in tests to access the specified URL
robot --variable url:https://www.example.com mon_test.robot
// This command exclude all tests marked with the tag "slow" in the "my_test.robot" file
robot --exclude slow mon_test.robot
//  rerun tests that failed in a previous execution using the results file from the previous test run
robot --rerunfailed resultat_echecs.xml mon_test.robot

// to launch some tests in your script you can use
robot --test nom_du_test mon_test.robot
// Command that execute all Robot Framework scripts in a directory
robot /path/to/directory
// output allow to save the results in the "results.html" file
robot --output results.html /path/to/directory
//



EXAMPLES
robot --variable username:standard_user .\R06_duplicatedImages.robot