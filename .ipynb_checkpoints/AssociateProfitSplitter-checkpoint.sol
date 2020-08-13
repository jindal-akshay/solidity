{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "pragma solidity ^0.5.0;\n",
    "\n",
    "// lvl 1: equal split\n",
    "contract AssociateProfitSplitter {\n",
    "    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.\n",
    "    address public payable employee_one;\n",
    "    address public payable employee_two;\n",
    "    address public payable employee_three;\n",
    "\n",
    "    constructor(address payable _one, address payable _two, address payable _three) public {\n",
    "        employee_one = _one;\n",
    "        employee_two = _two;\n",
    "        employee_three = _three;\n",
    "    }\n",
    "\n",
    "    function balance() public view returns(uint) {\n",
    "        return address(this).balance;\n",
    "    }\n",
    "\n",
    "    function deposit() public payable {\n",
    "        // @TODO: Split `msg.value` into three\n",
    "        uint amount = msg.value/3; // Your code here!\n",
    "\n",
    "        // @TODO: Transfer the amount to each employee\n",
    "        employee_one.transfer(amount);\n",
    "        employee_two.transfer(amount);\n",
    "        employee_three.transfer(amount);\n",
    "        \n",
    "\n",
    "\n",
    "        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)\n",
    "        //uint256 remainder = msg.value % 50000000000000000;\n",
    "        //msg.sender.send(remainder);\n",
    "        uint256 remainder = msg.value % 3;\n",
    "        msg.sender.transfer(remainder);\n",
    "    }\n",
    "\n",
    "    function() external payable {\n",
    "        // @TODO: Enforce that the `deposit` function is called in the fallback function!\n",
    "        \n",
    "        deposit();\n",
    "        }\n",
    "    }\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
