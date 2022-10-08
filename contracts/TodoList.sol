pragma solidity ^0.8.0;

contract TodoList {
    uint public taskCount = 0; 

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("do 12 push-ups daily");
    }

    function createTask(string memory _content) public {
        taskCount += 1;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

}