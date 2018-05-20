pragma solidity ^0.4.0;

//So in the contract we define the game state and the moves you can make in it. This is obviously not a final design.
contract Game {

    //Define structs first.

    //Implement player associations later.

    struct Building {
        string name;
    }

    //Define the land asset that players can hold.
    struct Land {
        string name;
        uint size;
        uint buildingNumber; //refactor into a function.
        Building[] Buildings;
        address owner; //make this a group of players later on.
    }

    //Define a player and associate each address with a player with a mapping.
    struct Player {
        uint id;
        address _address;
        uint hp;
        string name;
    }

    Land[] public Lands;
    Player[] public Players;

    //Define game functions.
    
    function createPlayer(string newName) private returns(uint rowNumber) {
        Player memory newPlayer;
        newPlayer._address = msg.sender;
        newPlayer.hp = 30;
        newPlayer.name = newName;
        return Players.push(newPlayer)-1;
    }

    function createLand(string newName) private returns(uint rowNumber) {
        Land memory newLand;
        newLand.size = 4; //set options later
        newLand.name = newName;
        return Lands.push(newLand);
    } 

    function LandCount() public view returns (uint Count) {
        return Lands.length;
    }

    function PlayerCount() public view returns (uint Count) {
        return Players.length;
    }
}