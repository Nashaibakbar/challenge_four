pragma solidity ^0.6.0;

contract Challenge_Four{

function SendEther() external payable { // send ether to contract 
if (msg.value <1000 wei){ // check the minimum balance if less than 1000 wei revert transaction
    revert();
}
}

function WithdrawEther(address payable _recipient, uint  _amount) external { // withdraw ether form smart contrat 
    _recipient.transfer(_amount);
    
}

function CheckBalance() external view returns (uint){ // check balance 
    return address(this).balance;
}

    
}
    
