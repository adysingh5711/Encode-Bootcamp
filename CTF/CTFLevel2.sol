// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////


/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level2Template {
function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray) {
        sortedArray = unsortedArray;
        
        unchecked {
            for (uint256 i = 0; i < 9; ++i) {
                uint256 minIndex = i;
                for (uint256 j = i + 1; j < 10; ++j) {
                    if (sortedArray[j] < sortedArray[minIndex]) {
                        minIndex = j;
                    }
                }
                if (minIndex != i) {
                    (sortedArray[i], sortedArray[minIndex]) = (sortedArray[minIndex], sortedArray[i]);
                }
            }
        }
    }
}