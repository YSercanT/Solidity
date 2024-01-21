// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract loops{
    uint256[25] public n1;
    uint256[45] public n2;
    function listByFor() public {
        uint256[25] memory nums=n1;
        for(uint256 i=0;i<nums.length;i++){
            nums[i]=i*i;
        }
        n1=nums;

    }
    function listByWhile() public {
        uint256[25] memory nums=n1;
        uint256 i=0;
        while(i<nums.length){
            nums[i]=i*i*i;
            i++;
        }
        n1=nums;

    }
    function listByFor2() public {
        uint256[45] memory nums=n2;
        for(uint256 i=0;i<nums.length;i++){
            if(i==10){
                continue ;
            }else if(i>30){
                break;
            }
            nums[i]=i*i;
        }
        n2=nums;

    }
    function getArr() public view returns(uint256[25] memory){
        return n1;
    }
    function getArr2() public view returns(uint256[45] memory){
        return n2;
    }
}
