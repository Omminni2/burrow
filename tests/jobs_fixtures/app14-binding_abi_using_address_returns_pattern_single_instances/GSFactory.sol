pragma solidity >=0.0.0;

contract GSContract {
  uint storedData;

  function set(uint x) public {
    storedData = x;
  }

  function get() public constant returns (uint retVal) {
    return storedData;
  }
}

contract GSFactory {
	address lastCreated;

	function create() public returns (address GSAddr) {
		lastCreated = new GSContract();
		return lastCreated;
	}

	function getLast() public view returns (address GSAddr) {
		return lastCreated;
	}
}