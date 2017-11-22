var HDWalletProvider = require("truffle-hdwallet-provider");

var infura_apikey = "Otx0crc4ZOUEJB305Dlg ";
var mnemonic = "wise topple busy sound wide rich solve area toss where helmet pact";
module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
     ropsten:  {
       provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"+infura_apikey),
            network_id: 3
}
  }
};
