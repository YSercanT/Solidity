// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract struct_enum{
    enum Status{
        Taken,
        Preparing,
        Boxed,
        Shipped
    }

    struct Order{
        address customer;
        string zipcode;
        uint256[] products;
        Status status;
    }
    Order[] public orders;
    address public owner;
    constructor(){
        owner=msg.sender;
    }
    function createOrder(string memory _zipcode,uint[] memory _products) external  returns(uint256){
        require(_products.length>0,"No products");
        Order memory order;
        order.products=_products;
        order.zipcode=_zipcode;
        order.status=Status.Taken;
        order.customer=msg.sender;
        orders.push(order);
        return orders.length-1 ;
    }
    function adcancedOrder(uint orderID) external {
        require(owner ==msg.sender,"You are not autorized.");
        require(orderID<orders.length,"Not a valid order id.");
        Order storage order=orders[orderID];
        require(order.status !=Status.Shipped,"Order is already shipped");
        if(order.status==Status.Taken){
            order.status=Status.Preparing;

        }else if (order.status==Status.Preparing){
            order.status=Status.Boxed;
        }else if (order.status==Status.Boxed){
            order.status=Status.Shipped;
        }
    }
    function getOrder(uint256 orderID) external view returns(Order memory){
        require(orderID<orders.length,"Not a valid order id.");
        return orders[orderID];
    }
    function updateZip(uint orderID,string memory zip) external{
        require(orderID<orders.length,"Not a valid order id.");
        Order storage order =orders[orderID];
        require(order.customer==msg.sender,"You are not the owner of the order");
        order.zipcode=zip;

    }


}
