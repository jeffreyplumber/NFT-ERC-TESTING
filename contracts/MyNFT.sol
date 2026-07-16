// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage, Ownable {

    uint256 public nextTokenId;

    constructor() ERC721("My NFT Collection", "MNFT") Ownable(msg.sender) {}

    function mint(address recipient, string memory tokenURI)
        public
        onlyOwner
    {
        uint256 tokenId = nextTokenId;

        _safeMint(recipient, tokenId);
        _setTokenURI(tokenId, tokenURI);

        nextTokenId++;
    }
}
