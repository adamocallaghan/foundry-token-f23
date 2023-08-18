// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract ManualToken {

    mapping (address => uint256) private s_balances;

    function name() public pure returns (string memory) {
        return "Manual Token";
    }

    function decimals() public pure returns (uint8) {
        returns 18;
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return s_balances[_owner];
    }

    function transfer(address _to, uint256 _amount) public {
        uint256 previousBalance = balanceOf[msg.sender] + balanceOf[to];
        s_balances[msg.sender] -= _amount;
        s_balances[_to] += amount;
        require(balanceOf[msg.sender] + balanceOf[_to] == previousBalance);
    }


}
