###Version
The latest stable release of the "lava-uds" repository projects is represented by the  version of the latest Tag in the repository, i.e. there is a single version number for all projects in the "lava-uds" repository.

Tag version numbers are formatted as MAJOR.MINOR.PATCH where a letter ('a', 'b', etc.) may be appended to the PATCH for hot fixes. 

Note that version numbering will not be in sync between the "lava-uds" repository and the "lava" repository upon which it depends. However, the major version number is kept in sync, so it should be clear that a version of "lava-uds" will not work with a version of "lava" where the major version number is different. 


    
###Environment Dependencies
- Java JDK 1.6 or later
- Apache Tomcat 5 or later
- MySQL 5.5 or later


   
###Source Code Dependencies
The latest code base in the master branch of the "lava-uds" repository is always kept source code compatible with the latest code base in the master branch of the ["lava"] (https://github.com/UCSFMemoryAndAging/lava.git) repository.

###Database Complete Dependencies
#CRMS NACC application
|Latest Complete Script|
|/lava-app-demo/database/local/demo/versions/V3.4/V3.4.1/complete/lava-demo-complete-crms-nacc-dump-3.4.1.sql|
| |
|Subsequent Database Scripts to Run:|
|/lava-crms-nacc/database/crms-nacc/versions/V3.5/V3.5.0/lava-crms-nacc-data-3.4.1-to-3.5.0.sql|
|/lava-crms-nacc/database/crms-nacc/versions/V3.5/V3.5.0/lava-crms-nacc-data-3.4.1-to-3.5.0.sql|
|/lava-crms-nacc/database/crms-nacc/versions/V3.5/V3.5.1/lava-crms-nacc-data-3.5.0-to3.5.1.sql|

#CRMS application
|Latest Complete Script|
|/lava-app-demo/database/local/demo/versions/V3.4/V3.4.1/complete/lava-demo-complete-crms-dump-3.4.1.sql|
| |
|Subsequent Database Scripts to Run:|
| -- none -- |




    
###Database Schema
The "versionhistory" table tracks which database update scripts have been run against a database. Database update scripts can be "data" scripts for metadata and other static application data, and "model" scripts for database schema changes, including views and stored procedures.

To obtain database model and data updates there are SQL scripts under the "database" directory of each project. Within the "database" folder, the scripts for production databases are under the "versions" folder. Within the "versions" folder all scripts under the "update" folders are candidates to be run.

Given the information in the "versionhistory" table about what database update scripts have been run against the database, run all database update scripts that have a later version than indicated by "versionhistory" to update the database to the latest version. The scripts themselves will update "versionhistory" upon successful completion.

note: it is not guaranteed that database update scripts are idempotent although developers are encouraged to create such scripts

