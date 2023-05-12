//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


//struct allow you to group data together 
contract Structs{
    struct Car{
        string model;
        uint year;
        address owner;

    }

    //use struct as a state variable  
    Car public car;
    //define array of struct
    Car[] public cars;
    //define owner address mapping
    mapping(address => Car[]) public carsByOwner;

//INITIALIZE- 3WAYS
    function examples() external{
        Car memory toyota = Car("Toyota",1990,msg.sender);
        Car memory lambo = Car({model:"Lamborgini",year:1990,owner:msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2020;
        tesla.owner = msg.sender;        


        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",101,msg.sender));

//get
//memory means loading data on to memory 
        // Car memory _car = cars[0];
        // _car.model;
        // _car.owner;
        // _car.owner;

//update
        Car storage _car = cars[0];
        _car.year = 1999;

        delete _car.owner;
        delete cars[1];


    }
    


    
}
