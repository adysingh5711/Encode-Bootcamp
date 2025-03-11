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
// The type uint256 in Solidity represents an array of 3 elements, where each element is an array of 2 uint256 values. This means we have a 3×2 matrix (3 rows, 2 columns).
function solution(uint256[2][3] calldata x, uint256[2][3] calldata y) external pure returns (uint256[2][3] memory finalArray) {
    unchecked {
        for (uint256 i; i < 3; ++i) {
            for (uint256 j; j < 2; ++j) {
                finalArray[i][j] = x[i][j] + y[i][j];
            }
        }
      return finalArray;
    }
  }
}

// Optimised from 297954 gas to --> 262301

// This optimized version includes:

// 1. Using unchecked blocks for arithmetic operations that won't overflow, saving gas

// 2. Removing the initialization of loop counters to zero (they default to zero)

// 3. Using pre-increment (++i) instead of post-increment (i++), which is slightly more gas-efficient

// 4. Fixing the loop bounds to match the correct array dimensions (3 rows, 2 columns)

// Additional Optimizations
// 1. The calldata keyword for parameters is already optimal as it's more gas-efficient than using memory for function parameters

// 2. The function is correctly marked as external which is more gas-efficient than public

// 3. The function is correctly marked as pure since it doesn't read from or modify the contract state
