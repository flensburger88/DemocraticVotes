pragma solidity >=0.4.22 <0.7.0;


/** 
Smart Contract for the Project https://github.com/flensburger88/DemocraticVotes
 */
contract DemocraticBallot {

    /**
     * @dev a poll defines the decision and voting state of a pull request. It stores all information of the poll itself
      
     */
     struct Poll {
        string pullRequestLink;  // link to the pull request on the hosting provider web ui
        string pullRequestId;    // technical id of the pull request on the hosting platform
        string hostingplatform;  // the name of the hosting platform, where the pull request is happening
        string title;            // title of the poll / title of the pull request
        string description;      // description of the poll / text of the pull request
        uint voteEnd;            // timepoint of the vote to end 
        bool isTransferd ;       // specifies, if the pull request is already applied on the hosting platform
        
        uint votersApproveCount; // counts the amount of voters who approve the pull request
        mapping(address => bool) votersDeny; // all the voters, who approved the pull request
        uint votersDenyCount;   // counts the amount of voters who deny the pull request
        mapping(address => bool) votersApprove; // all the voters, who denied the pull request
    }

    /**
     * @dev contains all polls that are executed during the livetime of this smart contract
     * @dev Index 0 is the default empty poll. Defined in constructor
     */
    Poll[] public polls;
    
    bool internal devMode;
    
    /**
     * @dev Defines the oracle account. Its the only account with more privilidges
     */
    address public oracle;


    /** 
     * @dev Create a new ballot to choose one of 'proposalNames'.
     */
    constructor() public {
        devMode = true;
        oracle = msg.sender;
        polls.push(Poll({
            pullRequestLink    :   "" ,
            pullRequestId      :   "" ,
            hostingplatform    :   "" ,
            title              :   "" ,
            description        :   "" ,
            voteEnd            :   0 ,
            votersDenyCount    :   0,
            votersApproveCount :   0,
            isTransferd        :   true
        }));
    }

        
    /** 
     * @dev Submit a new pull request into the voting database
     * @param _pullRequestLink link to the pull request on the hosting provider web ui
     * @param _pullRequestId       technical id of the pull request on the hosting platform
     * @param _hostingplatform     the name of the hosting platform, where the pull request is happening
     * @param _title               title of the poll / title of the pull request
     * @param _description         description of the poll / text of the pull request
     * @param _voteEnd               timepoint of the vote to end 
     */
    function submitNewPoll(string memory _pullRequestLink, string memory _pullRequestId, string memory _hostingplatform, string memory _title, string memory _description, uint _voteEnd) public {
        if(!devMode){
            require(
                msg.sender == oracle,
                "VOTE: Only the oracle can transfer new pull requests."
            );
            require(
                bytes(_pullRequestLink).length > 0,
                "VOTE: The link needs to be provided."
            );
            require(
                bytes(_title).length > 0,
                "VOTE: The title needs to be provided."
            );
            require(
                bytes(_description).length > 0,
                "VOTE: The description needs to be provided."
            );
            require(
                _voteEnd > now,
                "VOTE: The end of the vote needs to be in the future."
            );
            
            Poll storage poll = getPoll(_pullRequestId, _hostingplatform);
            
            
            require(
                poll.voteEnd == 0 ,
                "VOTE: The pull request is already transfered."
            );
        }

        
        polls.push(Poll({
            pullRequestLink    :	 _pullRequestLink ,
            pullRequestId      :   _pullRequestId ,
            hostingplatform    :   _hostingplatform ,
            title              :   _title ,
            description        :   _description ,
            voteEnd            :   _voteEnd ,
            votersDenyCount    :   0,
            votersApproveCount :   0,
            isTransferd        :  false
        }));
        
    }

    
    /**
     * @dev checks wether a given adress is already included in the list of voters.
     * @param poll The poll to check against
     * @param user the user adress to check for
     */
    function hasVoted(Poll storage poll, address user) view private returns (bool) {
        return poll.votersDeny[user] || poll.votersApprove[user];
    }

    /**
     * @dev Allows to perform a vote. The current user will be taken as executor.
     * @param key the pull request index to vote for / can be received via getKey getPollIndex
     * @param approve true means to acceppt the pull request, false it should be declined
     */
    function vote(uint key, bool approve) public {
        vote(key, approve, msg.sender);
    }
    /**
     * @dev This is a fake voting method, to test this smart contract without having to many accounts. It should be deactivated in productive use
     * @param key the pull request index to vote for / can be received via getKey getPollIndex
     * @param approve true means to acceppt the pull request, false it should be declined
     * 
     */
    function voteFake(uint key, bool approve, address voter) public {
        if(!devMode){
            require(
                msg.sender == oracle,
                "VOTE: Only the oracle can transfer new pull requests."
            );
        }

        vote(key, approve, voter);
    }
    
    /**
     * @dev This is the internal voting method, to test this smart contract without having to many accounts. It should be deactivated in productive use
     * @param key the pull request index to vote for / can be received via getKey getPollIndex
     * @param approve true means to acceppt the pull request, false it should be declined
     * @param voter the address that should perform the vote. normaly a user block.
     * 
     */
    function vote(uint key, bool approve, address voter) private {
        Poll storage poll = polls[key];
        require(
            poll.voteEnd > 0,
            "VOTE: The required poll does not exist"
        );
        require(
            poll.voteEnd > now,
            "VOTE: The poll expired"
        );
        require(
            !hasVoted(poll, voter),
            "VOTE: The required poll does not exist"
        );
        
        if(approve){
            poll.votersApproveCount += 1;
            poll.votersApprove[voter] = true;
        }else{
            poll.votersDenyCount += 1;
            poll.votersDeny[voter] = true;
        }
    }
    
    
     /**
     * @dev Returns the next finished vote, that was not yet transfered to the hosting platform, returns 0 if noone is found
     */
    function getNextVoteFinishedButUntransfered() view public returns (uint){
        if(!devMode){
            require(
                msg.sender == oracle,
                "VOTE: Only the oracle can transfer new pull requests."
            );
        }
        
        uint currentTime = now;
        
         for (uint i = polls.length -1 ; i > 0; i--) {
             Poll memory poll = polls[i];
             if(poll.voteEnd < currentTime && !poll.isTransferd){
                 return i;
             }
             
        }
        return 0;
    }
	
	     /**
     * @dev Returns length of the poll array
     */
    function getPollLength() view public returns (uint){
        return polls.length;
    }
    
    
   
     /**
     * @dev marks a poll as applied on the hosting platform
     * @param pollKey The index of the poll to mark as transferred
     */
    function appliedOnHostingPlatform(uint pollKey) public {
        if(!devMode){
            require(
                msg.sender == oracle,
                "VOTE: Only the oracle is allowed to perform this."
            );
        }

        Poll storage poll = polls[pollKey];
        
        require(
            poll.voteEnd > 0,
            "VOTE: The pull request does not exist."
        );
        require(
            poll.voteEnd < now,
            "VOTE: The pull has not ended yet."
        );
        
        poll.isTransferd = true;

    }
    
     /**
     * @dev marks a poll as applied on the hosting platform
     * @param _pullRequestId       technical id of the pull request on the hosting platform
     * @param _hostingplatform     the name of the hosting platform, where the pull request is happening
     */
    function appliedOnHostingPlatform(string memory _pullRequestId, string memory _hostingplatform) public {
        appliedOnHostingPlatform(getPollIndex(_pullRequestId, _hostingplatform));
    }

     /**
     * @dev searches for the poll index of a given poll
     * @param _pullRequestId       technical id of the pull request on the hosting platform
     * @param _hostingplatform     the name of the hosting platform, where the pull request is happening
     */
    function getPollIndex(string memory _pullRequestId, string memory _hostingplatform) view public returns (uint) {
        for (uint i = polls.length; i > 0; i--) {
             Poll storage poll = polls[i];
             if(equals( poll.pullRequestId, _pullRequestId) && equals(poll.hostingplatform , _hostingplatform)){
                 return i;
             }
        }
        return 0;
    }
    
     /**
     * @dev searches for the a poll based on the public information
     * @param _pullRequestId       technical id of the pull request on the hosting platform
     * @param _hostingplatform     the name of the hosting platform, where the pull request is happening
     */
    function getPoll(string memory _pullRequestId, string memory _hostingplatform) view internal returns (Poll  storage) {
        return polls[getPollIndex(_pullRequestId, _hostingplatform)];
    }
    
    /**
     * @dev Compares two strings with each other, true if they are equal
     */
    function equals(string memory a, string memory b) pure internal returns (bool){
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
    
    
    
    /**
     * @dev calculates the voting result in the database
     * @param _pullRequestId       technical id of the pull request on the hosting platform
     * @param _hostingplatform     the name of the hosting platform, where the pull request is happening
     */
    function getVotingResult(string memory _pullRequestId, string memory _hostingplatform) view public returns (bool) {
        return getVotingResult(getPollIndex(_pullRequestId, _hostingplatform));
    }
    
    /**
     * @dev calculates the voting result in the database
     * @param key The index of the poll to mark as transferred
     */
    function getVotingResult(uint key) view public returns (bool) {
        Poll storage poll = polls[key];
        
        require(
            poll.voteEnd > 0,
            "VOTE: The pull request does not exist."
        );
        require(
            poll.voteEnd < now,
            "VOTE: The pull has not ended yet."
        );
        
        return calcVotingResultMajority(poll);
    }

     /**
     * @dev calculates the voting result based on a poll / true means more positve than negative voices
     * @param poll the poll that the result should be calculated against.
     */
    function calcVotingResultMajority(Poll memory poll) pure internal returns (bool) {
       return poll.votersApproveCount > poll.votersDenyCount;
    }

    
        
     /**
     * @dev simple hello world for testing
     */
    function helloWorld() pure public returns (string memory){
        return "VOTE: Hello World from Solidity";
        
    }

     /**
     * @dev simple hello world for testing
     */
    function activateProduction() public {
        require(
            devMode,
            "VOTE: Production Mode is already active."
        );
        
        devMode = false;
    }

}
