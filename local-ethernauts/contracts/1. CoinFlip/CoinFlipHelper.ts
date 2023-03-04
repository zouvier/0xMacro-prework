import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  // add code here that will help you pass the test
  let winCount = await victim.consecutiveWins();

  while (winCount < 11) {
    await attacker.hackContract();
    winCount = await victim.consecutiveWins();
  }
};

export default helper;
