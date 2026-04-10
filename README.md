Referral Rewards Booster Hook

This hook gives users a small reward boost when they join through a referral.

When a user registers a referrer, their future rewards are increased by 10%. The idea is simple: users who help bring more people into the platform get a little extra in return.

What it does
Lets a user save a referrer address
Blocks self-referrals
Prevents the same user from registering twice
Adds a 10% reward multiplier for referred users
Works with the Gotchipus hook system
Example

If a user normally receives 100 reward points, the hook increases it to 110 after a referral is registered.

Files
ReferralRewardsBooster.sol – main hook contract
BaseHook.sol – basic hook contract used by the main file
How to use
Deploy the contract
Call registerReferral() with the referrer wallet address
Future rewards for that user will automatically be boosted

Example:

registerReferral(0x1234567890123456789012345678901234567890);

After that, whenever the hook runs, the user gets 10% more rewards.

Why this hook exists

Many reward systems only focus on staking or activity. This hook adds a simple referral layer without making the process complicated. It is easy to understand, easy to integrate, and gives users a reason to invite others.
