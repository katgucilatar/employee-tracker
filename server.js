const inquirer = require('inquirer');
const mysql = require('mysql2');

const db = mysql.createConnection(
    {
      host: 'localhost',
      user: 'root',
      password: 'root',
      database: 'business_db'
    },
    console.log(`Connected to the business_db database.`)
  );

inquirer
    .prompt([
        {
            type: 'list',
            message: 'What would you like to do?',
            name: 'task',
            choices: [
                'View All Departments',
                'View All Roles',
                'View All Employees',
                'Add Department',
                'Add Role',
                'Add Employee'
            ]
        }
    ])

    .then((answers) => { 
        if (answers.task === 'View All Departments') {
            viewAllDepartments()
        } else if (answers.task === 'View All Roles') {
            viewAllRoles()
        } else if (answers.task === 'View All Employees') {
            viewAllEmployees()
        } else if (answers.task === 'Add Department') {
            addDepartment()
        }  else if (answers.task === 'Add Role') {
            addRole()
        }  else if (answers.task === 'Add Employee') {
            addEmployee()
        }  
    });

viewAllDepartments = () => {
    const sql = 'SELECT * FROM department';

    db.query(sql, function (err, results) {
        if (err) throw (err);
        console.table(results);
      });
};

viewAllRoles = () => {
    const sql = 'SELECT * FROM role';

    db.query(sql, function (err, results) {
        if (err) throw (err);
        console.table(results);
      });
};

viewAllEmployees = () => {
    const sql = 'SELECT * FROM employee';

    db.query(sql, function (err, results) {
        if (err) throw (err);
        console.table(results);
      });
};

addDepartment = () => {
    inquirer
        .prompt([
            {
                type: 'input',
                message: 'What is the name of the department?',
                name: 'department_name'
            }
        ])
        .then((answers) => { 

            const sql = `INSERT INTO department SET ?`

            db.query(sql, answers, function (err, results) {
                if (err) throw (err);
                console.table(results);
              });
        });
};

addRole = () => {
    inquirer
        .prompt([
            {
                type: 'input',
                message: 'What is the name of the role?',
                name: 'title'
            },
            {
                type: 'input',
                message: 'What is the salary of the role?',
                name: 'salary'
            },
            {
                type: 'list',
                message: 'What is the department ID of the role?',
                name: 'department_id',
                choices: [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7
                ]

            } 
        ])
        .then((answers) => { 
           
            const sql = `INSERT INTO role SET ?`

            db.query(sql, answers, function (err, results) {
                if (err) throw (err);
                console.table(results);
              });
        });
};

addEmployee = () => {
    inquirer
        .prompt([
            {
                type: 'input',
                message: 'What is the first name of the employee?',
                name: 'first_name'
            },
            {
                type: 'input',
                message: 'What is last name of the employee?',
                name: 'last_name'
            },
            {
                type: 'input',
                message: 'What is the role ID of the employee?',
                name: 'role_id',
            },
            {
                type: 'input',
                message: 'What is the manager ID of the employee?',
                name: 'manager_id'
            }
        ])
        .then((answers) => { 
            const sql = `INSERT INTO employee SET ?`

            db.query(sql, answers, function (err, results) {
                if (err) throw (err);
                console.table(results);
              });
        });
};

