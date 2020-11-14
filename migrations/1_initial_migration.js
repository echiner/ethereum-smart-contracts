// Replace this file with the contract you want to deploy
const SimpleSmartContract = artifacts.require("SimpleSmartContract");

module.exports = function (deployer) {
  deployer.deploy(SimpleSmartContract);
};
