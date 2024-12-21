// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearningProgress {
    // Mapping to store user progress, using address as the key and progress as the value
    mapping(address => uint256) public userProgress;

    // Event that is emitted when progress is updated
    event ProgressUpdated(address indexed user, uint256 progress);

    // Function to update user progress
    function updateProgress(uint256 progress) public {
        userProgress[msg.sender] = progress;
        emit ProgressUpdated(msg.sender, progress);
    }

    // Function to retrieve the progress of a specific user
    function getProgress(address user) public view returns (uint256) {
        return userProgress[user];
    }

    // Function to reset progress to zero (for example, if a user starts a new course)
    function resetProgress() public {
        userProgress[msg.sender] = 0;
        emit ProgressUpdated(msg.sender, 0);
    }
}
