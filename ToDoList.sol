pragma solidity ^0.5.0;

contract ToDoList {
    uint public taskCount = 0;

    struct Task{
        uint Id;
        string content;
        bool completed;
    }

    mapping (uint => Task) public tasks;

    constructor() public {
        createTask("Define the primary Goal");
        createTask("Choose the consensus mechanism");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        task[taskCount]=Task(taskCount, _content, false);
    }
}