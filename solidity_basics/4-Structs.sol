pragma solidity ^0.4.22;

contract StructsSample{

    //structure to hold employee details
    struct empStruct {
        int empId;
        string empName;
    }

    //mapping to store all employees
    mapping(int => empStruct) empMap;

    //employee struct
    empStruct emp;

    //constructor to initialize employee on start up
    constructor(int empIdInit, string empNameInit) public {
        emp = empStruct(empIdInit,empNameInit);
        empMap[empIdInit] = emp;
    }

    //function to add an employee to the list
    function addEmployee(int empIdInit,string empNameInit) public {
        emp = empStruct(empIdInit,empNameInit);
        empMap[empIdInit] = emp;
    }

    //function to fetch the employee details
    function getEmployeeDetails(int empIdInit) public returns(int empIdReturn,string empNameReturn){
        emp = empMap[empIdInit];
        return (emp.empId,emp.empName);
    }

}
