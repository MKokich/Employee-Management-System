const inquirer = require("inquirer");

function mainMenu() {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "MAIN MENU",
      choices: [
        "View all employees",
        "View all employees by role",
        "View all employees by department",
        "Add employee",
        "Add role",
        "Add department",
        "Update employee role",
      ],
    })
    .then((answer) => {
      switch (answer.action) {
        case "View all employees":
          allEmp();
          break;
        case "View all employees by role":
          allRole();
          break;
        case "View all employees by department":
          allDept();
          break;
        case "Add employee":
          addEmp();
          break;
        case "Add role":
          addRole();
          break;
        case "Add department":
          addDept();
          break;
        case "Update employee role":
          updateEmpRole();
          break;
        case "End":
          connection.end();
          break;
      }
    });
}
