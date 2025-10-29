// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationTracker {
    // Struct to store each donation record
    struct Donation {
        address donor;
        uint256 amount;
        uint256 timestamp;
    }

    // Mapping from recipient address to list of their donations
    mapping(address => Donation[]) public donationHistory;

    // Event to log each donation on the blockchain
    event DonationMade(address indexed donor, address indexed recipient, uint256 amount, uint256 timestamp);

    // Function to make a donation
    function donate(address recipient) external payable {
        require(msg.value > 0, "Donation amount must be greater than zero");
        require(recipient != address(0), "Invalid recipient address");

        // Record the donation in the mapping
        donationHistory[recipient].push(Donation({
            donor: msg.sender,
            amount: msg.value,
            timestamp: block.timestamp
        }));

        // Emit event for transparency
        emit DonationMade(msg.sender, recipient, msg.value, block.timestamp);

        // Transfer the funds to the recipient
        payable(recipient).transfer(msg.value);
    }

    // Function to get total donations received by a recipient
    function getTotalDonations(address recipient) external view returns (uint256 total) {
        Donation[] memory donations = donationHistory[recipient];
        for (uint256 i = 0; i < donations.length; i++) {
            total += donations[i].amount;
        }
    }

    // Function to get all donations for a specific recipient
    function getDonationHistory(address recipient) external view returns (Donation[] memory) {
        return donationHistory[recipient];
    }
}
