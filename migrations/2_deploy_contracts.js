var Storage = artifacts.require("./rimule.sol");
module.exports = function(deployer) {
  deployer.deploy(Storage);
};
