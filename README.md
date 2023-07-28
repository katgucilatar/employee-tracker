Employee Tracker 
    
## Table of Contents
* [Description](#description)
* [Installation](#installation)
* [Tests](#tests)
* [Usage](#usage)
* [Contributing](#contributing)
* [Questions](#questions)

## Description
This Employee Tracker app was created for an assignment by UNC Coding Bootcamp. This app utilizes Inquirer and MySQL to create a database that can be viewed in the console.

Watch the following walkthrough video to see how this app works: 
https://watch.screencastify.com/v/8udGvTobZ4nc7DZrKJEQ

## Installation
In order to download this code from the repository, one must have a software such as VS Code or one that's similar. Along with VS Code, it is necessary to download Node.JS and MySQL.

After downloading Node.JS and MySQL, it is important to install the packages associated with this app in order to be able to access its full properties.

Before opening this app in VS Code, make sure to Git Clone this project otherwise all packages will have to be installed manually.

Begin by opening the terminal, and typing in "npm init -y" as this will set a basic package.json file. 

We will now log into MySQL using "mysql -u root -p" and using "root" as the password. Once logged in, we're gonna source the schema by running "source db/schema.sql" in the terminal. We can then seed the database by running "source db/seeds.sql" in the terminal. Once that's done, run "quit" in the terminal to exit MySQL.

Once all that has been done, now we can install everything by typing "npm install" and it will install the packages that have been installed into this app.

Lastly before we test this app, we can run "node server.js" or "npm start" in the terminal to connect to the server.

## Tests
Upon installing everything, this app is tested within the console. Upon starting the server, Inquirer will provide a prompt allowing you to choose what you'd like to do: 'View All Departments',
                'View All Roles',
                'View All Employees',
                'Add Department',
                'Add Role',
                'Add Employee'
Upon selection, Inquirer will either show you the answer you've chosen or you will then be prompted with more questions if you'd like to add a department, role, employee. 

Watch this in the following walkthrough video here:
https://watch.screencastify.com/v/8udGvTobZ4nc7DZrKJEQ


## Usage
This app may be especially useful for those who owns a business or a business manager who would like to keep track of their employees, roles, and departments.

## Contributing
Katrina Gucilatar with guidelines assigned by UNC Coding Bootcamp

## Questions
Contact me at the following for any questions: 
GitHub: https://github.com/katgucilatar  
Email: katgucilatar@outlook.com