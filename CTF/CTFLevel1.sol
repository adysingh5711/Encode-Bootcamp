// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/*
  interface Isolution {
    function solution(uint256[2][3] calldata firstArray, uint256[2][3] calldata secondArray) external pure returns (uint256[2][3] memory finalArray);
  }
*/

contract Level1Template {

    function solution(uint256[2][3] calldata firstArray, uint256[2][3] calldata secondArray) external pure returns (uint256[2][3] memory finalArray) {
        for (uint i = 0; i < 3; i++) {
            for (uint j = 0; j < 2; j++) {
                finalArray[i][j] = firstArray[i][j] + secondArray[i][j];
            }
        }

        return finalArray;
    }
}