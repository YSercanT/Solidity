// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Variables{
    //Fixed Size 
    bool isTrue=false;
    int number=54;
    int8 number2_= 127; // 2^8
    uint number3_=12; // 0 to 2^256
    address myAddr=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 myBytes="Hello World";
    //Dynamic Size
    string public  myString="Hello World";
    bytes myBytes2="Hello World";

    uint[] numbers=[1,2,4,5,7];// array[2]=4
    mapping(uint => address ) public list;
    
    function print() public view returns(string memory){
        return myString;
    }
    //user Defined values
    struct Human{
        uint ID;
        string name;
        uint age;
        address addr;
    }
    //mapping (uint => Human) humanList;
    //Human person1;
   
    //person1.ID=1;
    //person1.name="Ceasar";
    //person1.age=24;
    //person1.address=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //humanList[2]=person1;
    enum RGBs {
        Red,Green,Blue
    }
    //1 wei =1;
    //1 ether =10^18 wei;
    //1 gwei =10^9 wei;
    //1 = 1 seconds;
    //1 minutes = 60 seconds;
    //1 hours =60 minutes;
    //1 days =24 hours;
    //1 weeks =7 days;
    

}
