// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //solidity versions

contract arrays {
   
   uint256 favoriteNumber;
   // uint256[] listofFavnumbers; //10 , 20 , 30 , 40 ( 0 indexed )

    struct person{
        uint256 favnumber;
        string name;
    }
   // person public myFriend = person({favnumber: 7, name:"Vishal"}); // 1st parameter goes to 7 and second goes to name

//dynamic array
    person[] public listofPeople ;
// static array
    //person[4] public listofStudents ;

    mapping (string => uint256) public findFavNumber ;
    mapping (uint256 => string) public findpersonFromNumber ;
   
   function store(uint256 _favnumber)public {
        favoriteNumber = _favnumber;
   }

   function retrieve() public view returns(uint256){
        return favoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public {
      
       person memory newPerson = person(_favoriteNumber,_name);
       
       listofPeople.push(newPerson);
      
       //mapping through names to get _favorite number
       findFavNumber[_name] = _favoriteNumber;

       findpersonFromNumber[_favoriteNumber] = _name ;

       // ALSO VALID
      // listofPeople.push(person(_favoriteNumber,_name));
   }
}