var Game = artifacts.require("Game"); //write a script to take care of stuff like this. 

module.exports = function(deployer) {
  deployer.deploy(Game);
};