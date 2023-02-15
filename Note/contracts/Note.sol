// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Note {
  struct user{
    string name;
    uint number;
    string adres;
  }
  mapping(string => user) public users;

  function setUser(string memory name, uint number, string memory adres) public {
    users[name] = user(name, number, adres);
  }

  function getUser(string memory name) public view returns(uint number, string memory adres) {
    return (users[name].number, users[name].adres);
  }
}
