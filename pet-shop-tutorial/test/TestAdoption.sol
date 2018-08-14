pragma solidity ^0.4.17;

import "truffle/Assert.sol";  // import from Truffle
import "truffle/DeployedAddresses.sol";  // Truffle will deploy a fresh instance of the conrtact this gets the address of the  deployed contact 
import "../contracts/Adoption.sol";   // the smart contact we want to test

contract TestAdoption {
	Adoption adoption = Adoption(DeployedAddresses.Adoption());

	//Testing the adopt() function 
	function testUserCanAdoptPets() public {
		uint returnId = adoption.adopt(8);

		uint expected = 8;

		Assert.equal(returnId, expected, "Adoption of pet ID 8 should be recorded");
	}

	// test retrival of pet owner for pet id 8
	function testGetAdoptionAddressByPetId() public {
		//Expected owner is this contract
		address expected = this;

		address adopter = adoption.adopters(8);

		Assert.equal(adopter, expected, "Owner of pet Id 8 should be recorded");
	}

	// test retrival of all pets
	function testGetAdopterAddressByPetIdArray() public {
		//expected owner is this contract
		address expected = this;

		//Store adopters in memory rather than contrac's storage. temeporary stored value
		address[16] memory adopters = adoption.getAdopters();

		Assert.equal(adopters[8], expected, "Owner of pet Id 8 should be recorded");
	}
}