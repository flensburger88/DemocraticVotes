const DemocraticBallot = artifacts.require("DemocraticBallot");

module.exports = function(deployer) {
  deployer.deploy(DemocraticBallot);
};
