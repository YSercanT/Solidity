// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract if_else{
    bytes32 private hashed_pw;
    uint256 private logincount;
    constructor(string memory password_){
        hashed_pw=keccak256(abi.encode(password_));

    }
    function login(string memory password_) public  returns(bool){
        if(hashed_pw== keccak256(abi.encode(password_))){
            logincount+=1;
            return true;
        }else{
            return false;
        }
    }
    function login2(string memory password_) public view returns(uint256){
       if(hashed_pw== keccak256(abi.encode(password_))){
            return 1;
        }else{
            return 0;
        }
    }
    function loginStatus() public view returns (uint256){
        if(logincount==0){
            return 0;
        }else if(logincount>0 && logincount !=1){
            return 1;
        }else{
            return 2;
        }
    }

}
