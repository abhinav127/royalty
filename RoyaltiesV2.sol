// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;
pragma abicoder v2;

import "https://github.com/abhinav127/royalty/blob/main/LibPart.sol";

interface RoyaltiesV2 {
    event RoyaltiesSet(uint256 tokenId, LibPart.Part[] royalties);

    function getRoyalties(uint256 id) external view returns (LibPart.Part[] memory);
}
