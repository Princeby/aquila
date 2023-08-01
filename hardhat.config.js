require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",
  networks: {
    sepolia: {
      url:'https://eth-sepolia.g.alchemy.com/v2/Zi0tfboTKQ1Kzd6VeOFSmhI9ngKSHTL1',
      accounts: [ 'b3e3628e7b6e0e82d1b3ce4583cd051aa2ef0b5072f00cf1c30abe5cb539871c']
    }
  }
};
