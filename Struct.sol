// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract sol_struct{

    struct student{
        string name;
        uint age;

    }

    student[] public allStudents;

    function getStudent(string memory _name, uint _age) public {

        student memory newStudent = student({name:_name, age:_age}); 

        allStudents.push(newStudent);
    }

    // student public  newStudent;

    // function getStudent() public {
    //     newStudent = student("abhishek", 22);

    // }

    // function getStudentId() public view  returns (uint){

    //     return newStudent.age;
    // }
}