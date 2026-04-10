// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./BaseHook.sol";

contract ReferralRewardsBooster is BaseHook {

    constructor(address _gotchipus) BaseHook(_gotchipus) {}

    mapping(address => address) public referrerOf;
    mapping(address => uint256) public rewardMultiplier;

    event ReferralRegistered(address indexed user, address indexed referrer);
    event MultiplierUpdated(address indexed user, uint256 multiplier);

    function registerReferral(address referrer) external {
        require(referrer != msg.sender, "Cannot refer yourself");
        require(referrerOf[msg.sender] == address(0), "Referral already set");

        referrerOf[msg.sender] = referrer;
        rewardMultiplier[msg.sender] = 110;

        emit ReferralRegistered(msg.sender, referrer);
        emit MultiplierUpdated(msg.sender, 110);
    }

    function getReward(address user, uint256 baseReward) public view returns (uint256) {
        uint256 multiplier = rewardMultiplier[user];

        if (multiplier == 0) {
            return baseReward;
        }

        return (baseReward * multiplier) / 100;
    }

    function afterExecuteHook(
        address user,
        uint256 reward
    ) external returns (uint256) {
        return getReward(user, reward);
    }
}
