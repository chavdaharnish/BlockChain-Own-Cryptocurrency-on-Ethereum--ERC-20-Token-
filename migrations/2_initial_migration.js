var HbcToken = artifacts.require("./HbcToken.sol");
var HbcTokenSale = artifacts.require("./HbcTokenSale.sol");

module.exports = function(deployer) {
  deployer.deploy(HbcToken, 1000000).then(function(){
    var tokenPrice = 1000000000000000;
    return deployer.deploy(HbcTokenSale, HbcToken.address, tokenPrice);
  });
};