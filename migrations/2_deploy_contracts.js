var Storage = artifacts.require("./storage.sol");
module.exports = function(deployer) {
  deployer.deploy(Storage);
};
