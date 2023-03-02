const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();

  console.log(
    "Deploying contracts with the account:",
    deployer.address
  );

  const Greeter = await hre.ethers.getContractFactory("Greeter");
  const greeter = await Greeter.deploy("Hello, World!");

  const zouvierToken = await hre.ethers.getContractFactory("zouvierToken");
  const zouviertoken = await zouvierToken.deploy("Zouvier Token","ZVT");

  await greeter.deployed();
  await zouviertoken.deployed();

  console.log("Greeter deployed to:", greeter.address);
  console.log("Token deployed to:", zouviertoken.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
