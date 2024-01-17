// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Funvtions{
    uint number=17;
    function showNumber() public view returns(uint){
        return number;
    }
    function setNumber(uint newNumber) public  {
        number=newNumber;
    }
    function multiret() public pure returns(uint ,bool,bool){
        return (42,true,false);
    }
    function multiret2() public pure returns(uint x, bool y ,bool z){
        x=42;
        y=false;
        z=true;
    }
    uint  h=1;
    function setH(uint newH) public{
       h=newH;
    }
    function getH() public view returns(uint){
        return h;
    }
    function setH2(uint y) public  returns(uint){
        h+=y;
        return h; 
    }
    function add(uint x,uint y)public view returns(uint){
        return x+y +block.timestamp;

    }
    function add2(uint x,uint y)public pure returns(uint){
        return x+y;

    }
    function add3(uint x,uint y)public pure returns(uint){
    return x+y ;
    }
    function add4(uint c,uint d)public pure returns(uint){
        return add4(c,d);
    }
    function publicword() public pure returns(string memory){
        return "this is a public function";
    }
    function publicword2() public pure returns(string memory){
        return publicword();
    }
    function privateword() private pure returns(string memory){
        return "this is a private function";

    }
    function callPrivateFunc() public pure returns(string memory){
        return privateword();
    }
    function internalWord() internal pure returns(string memory){
        return "this is an internal function";
    }
    function callInternalFunc() public pure returns(string memory){
        return internalWord();
    }
    function externalWord() external pure returns(string memory){
        return "this is an external function";
    }
    



}
