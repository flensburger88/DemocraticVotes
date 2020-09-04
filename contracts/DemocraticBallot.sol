pragma solidity >=0.4.22 <0.7.0;

//import "github.com/Arachnid/solidity-stringutils/strings.sol";

/** 
 */
contract DemocraticBallot {
    
    uint256 constant NULL = 0;

     struct Poll {
        string pullRequestLink;  // link to the pull request on the hosting provider web ui
        string pullRequestId;    // technical id of the pull request on the hosting platform
        string hostingplatform;  // the name of the hosting platform, where the pull request is happening
        string title;            // title of the poll / title of the pull request
        string description;      // description of the poll / text of the pull request
        uint voteEnd;            // timepoint of the vote to end 
        bool isTransferd ;       // specifies, if the pull request is already applied on the hosting platform
        
        mapping(address => bool) votersDeny;
        mapping(address => bool) votersApprove;
    }
    
    
    // voteEnd < now
    
    


    Poll[] public polls;
    address public oracle;


    /** 
     * @dev Create a new ballot to choose one of 'proposalNames'.
     */
    constructor() public {
        oracle = msg.sender;
        polls.push(Poll({
            pullRequestLink  :	 "" ,
            pullRequestId    :   "" ,
            hostingplatform  :   "" ,
            title            :   "" ,
            description      :   "" ,
            voteEnd          :   0 ,
            isTransferd      :  true
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
        require(
            msg.sender == oracle,
            "Only the oracle can transfer new pull requests."
        );
        require(
            bytes(_pullRequestLink).length == 0,
            "The link needs to be provided."
        );
        require(
            bytes(_title).length == 0,
            "The title needs to be provided."
        );
        require(
            bytes(_description).length == 0,
            "The description needs to be provided."
        );
        require(
            _voteEnd > now,
            "The end of the vote needs to be in the future."
        );
        
        Poll storage poll = getPoll(_pullRequestId, _hostingplatform);
        
        
        require(
            poll.voteEnd > 0 ,
            "The pull request is already transfered."
        );
        
        polls.push(Poll({
            pullRequestLink  :	 _pullRequestLink ,
            pullRequestId    :   _pullRequestId ,
            hostingplatform  :   _hostingplatform ,
            title            :   _title ,
            description      :   _description ,
            voteEnd          :   _voteEnd ,
            isTransferd      :  false
        }));
        
    }
    
    function getKey(string memory _pullRequestId, string memory _hostingplatform ) pure public returns (string memory) {
        require(
            bytes(_pullRequestId).length == 0,
            "The pullRequestId needs to be provided."
        );
        require(
            bytes(_hostingplatform).length == 0,
            "The hostingplatform needs to be provided."
        );
        return concat(_pullRequestId, _hostingplatform);
    }
    

    function hasVoted(Poll storage poll, address user) view private returns (bool) {
        return poll.votersDeny[user] || poll.votersApprove[user];
    }

    /**
     * @dev Delegate your vote to the voter 'to'.
     * @param key the pull request to vote for
     */
    function vote(uint key, bool approve) public {
        vote(key, approve, msg.sender);
    }
    /**
     * @dev This is a fake voting method, to test this smart contract without having to many accounts
     * * @param key the pull request to vote for
     * */
    function voteFake(uint key, bool approve, address voter) public {
        /*require(
            msg.sender == oracle,
            "Only the oracle can transfer new pull requests."
        );*/

        vote(key, approve, voter);
    }
    
     /**
     * @dev Delegate your vote to the voter 'to'.
     * @param key the pull request to vote for
     */
    function vote(uint key, bool approve, address voter) private {
        
        
        
        Poll storage poll = polls[key];
        require(
            poll.voteEnd == 0,
            "The required poll does not exist"
        );
        require(
            poll.voteEnd > now,
            "The poll expired"
        );
        require(
            !hasVoted(poll, voter),
            "The required poll does not exist"
        );
        
        if(approve){
            poll.votersApprove[voter] = true;
        }else{
            poll.votersDeny[voter] = true;
        }
    }
    
    
     /**
     * @dev Returns the next finished vote, that was not yet transfered to the hosting platform
     */
    function getNextVoteFinishedButUntransfered() view public returns (uint){
        
        /*require(
            msg.sender == oracle,
            "Only the oracle can transfer new pull requests."
        );*/
        
        uint currentTime = now;
        
         for (uint i = polls.length; i > 0; i--) {
             Poll memory poll = polls[i];
             if(poll.voteEnd < currentTime && !poll.isTransferd){
                 return i;
             }
             
        }
        return 0;
    }
    
    
     /**
     * @dev marks a poll as applied on the hosting platform
     */
    function appliedOnHostingPlatform(string memory _pullRequestId, string memory _hostingplatform) public {
        
        require(
            msg.sender == oracle,
            "Only the oracle is allowed to perform this."
        );

        Poll storage poll = getPoll(_pullRequestId, _hostingplatform);
        
        require(
            poll.voteEnd == 0,
            "The pull request does not exist."
        );
        require(
            poll.voteEnd < now,
            "The pull has not ended yet."
        );
        
        poll.isTransferd = true;

    }
    
    function getPoll(string memory _pullRequestId, string memory _hostingplatform) view internal returns (Poll  storage) {
        
        for (uint i = polls.length; i > 0; i--) {
             Poll storage poll = polls[i];
             if(equals( poll.pullRequestId, _pullRequestId) && equals(poll.hostingplatform , _hostingplatform)){
                 return poll;
             }
             
        }
        return polls[0];

    }
    
    function equals(string memory a, string memory b) pure internal returns (bool){
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
    
    
    
    function concat(string memory _base, string memory _value) internal pure returns (string memory) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);

        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);

        uint i;
        uint j;

        for(i=0; i<_baseBytes.length; i++) {
            _newValue[j++] = _baseBytes[i];
        }

        for(i=0; i<_valueBytes.length; i++) {
            _newValue[j++] = _valueBytes[i++];
        }

        return string(_newValue);
    }
    
    
    
    
    function getPollIndex(string memory _pullRequestId, string memory _hostingplatform) view public returns (uint) {
        
        for (uint i = polls.length; i > 0; i--) {
             Poll storage poll = polls[i];
             if(equals( poll.pullRequestId, _pullRequestId) && equals(poll.hostingplatform , _hostingplatform)){
                 return i;
             }
             
        }
        return 0;
    }
    
    
    function getVotingResult(string memory _pullRequestId, string memory _hostingplatform) view public returns (bool) {
        Poll storage poll = getPoll(_pullRequestId, _hostingplatform);
        
        require(
            poll.voteEnd == 0,
            "The pull request does not exist."
        );
        require(
            poll.voteEnd < now,
            "The pull has not ended yet."
        );
        
        //TODO: calculate voting result
        
        
        return false;
        
        

    }


    
        
     /**
     * @dev simple hello world for testing
     */
    function helloWorld() pure public returns (string memory){
        return "Hello World from Solidity";
        
    }
    

}
