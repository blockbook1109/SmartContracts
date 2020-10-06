pragma solidity >=0.4.22 <0.7.0;

contract showName {


    uint count=0;

    struct person{
        string name;
        uint id;
    }

    mapping(uint => person) public personMapping;


    function addName(string memory name) public returns (string memory){
        
        personMapping[count].name=name;
        personMapping[count].id=count;
        count+=1;    
        return "Added Succesfully";
        
    }

    function display(uint id) public view returns (string memory){
       return personMapping[id].name;
    }

}