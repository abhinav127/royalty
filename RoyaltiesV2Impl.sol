// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <=0.8.0;

import "https://github.com/abhinav127/royalty/blob/main/AbstractRoyalties.sol";
import "https://github.com/abhinav127/royalty/blob/main/RoyaltiesV2.sol";

contract RoyaltiesV2Impl is AbstractRoyalties, RoyaltiesV2 {
    function getRoyalties(uint256 id) override external view returns (LibPart.Part[] memory) {
        return royalties[id];
    }

    function _onRoyaltiesSet(uint256 _id, LibPart.Part[] memory _royalties) override internal {
        emit RoyaltiesSet(_id, _royalties);
    }
}
