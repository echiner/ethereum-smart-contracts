pragma solidity >=0.4.22 <0.7.0;

/**
 * @title Blockchain Session
 * @dev Store & retreive value in a variable
 */
contract EDEMSmartContract {

    int pokeCount;
    string greeting = "Hi guys!!! Welcome to the Blockchain session!!!";

    /**
     * @dev Increase the number of pokes
     */
    function poke() public {
        pokeCount = pokeCount + 1;
    }

    /**
     * @dev Get the number of getNumPokes
     * @return Number of pokes
     */
    function getNumPokes() public view returns (int) {
        return pokeCount;
    }

    /**
     * @dev Say hi to the class
     * @return A greeting
     */
    function hello() public view returns (string memory) {
        return greeting;
    }
}