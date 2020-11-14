pragma solidity >=0.4.22 <0.8.0;

/**
 * @title My CV
 */
contract MyCV {
    
    // CV Information
    string private name = "Esteban Chiner";
    string private summary;
    string[] private experiences;
    string[] private courses;
    string[] private certifications;

    // Control data
    int private pokeCount;
    address private owner;
    
    constructor () public {
        owner = msg.sender;
    }

    /**
     * @dev Increase the number of pokes
     */
    function poke() public {
        pokeCount = pokeCount + 1;
    }

    /**
     * @dev Get the number of getNumPokes
     * @return Number of pokes
     */
    function getNumPokes() public view returns (int) {
        return pokeCount;
    }

    /**
     * @dev Return value 
     * @return A greeting
     */
    function getName() public view returns (string memory) {
        return name;
    }
    
    
    
    function getSummary() public view returns (string memory) {
        return summary;
    }
    
    function setSummary(string memory summ) public {
        require(
            msg.sender == owner,
            "Only the owner of this CV can set the summary!"
        );
        summary = summ;
    }
    
    
    
    function addExperience(string memory exp) public  {
        require(
            msg.sender == owner,
            "Only the owner of this CV can add experiences!"
        );
        experiences.push(exp);
    }
    
    function getNumExperiences() public view returns (uint) {
        return experiences.length;
    }

    function getExperience(uint8 expId) public view returns (string memory) {
        return experiences[expId];
    }
    
    
    
    function addCourse(string memory exp) public  {
        require(
            msg.sender == owner,
            "Only the owner of this CV can add courses!"
        );
        courses.push(exp);
    }
    
    function getNumCourses() public view returns (uint) {
        return courses.length;
    }

    function getCourse(uint8 expId) public view returns (string memory) {
        return courses[expId];
    }



    function addCertification(string memory exp) public  {
        require(
            msg.sender == owner,
            "Only the owner of this CV can add certifications!"
        );
        certifications.push(exp);
    }
    
    function getNumCertifications() public view returns (uint) {
        return certifications.length;
    }

    function getCertification(uint8 expId) public view returns (string memory) {
        return certifications[expId];
    }

    /**
     * @dev Destroys the CV
     */
    function detroyCV() public {
        require(
            msg.sender == owner,
            "Only the owner of this CV can destroy it!"
        );
        selfdestruct(msg.sender);
    }
}