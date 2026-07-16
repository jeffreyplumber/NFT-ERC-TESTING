const { expect } = require("chai");

describe("MyNFT", function () {

    it("Should deploy successfully", async function () {

        const NFT = await ethers.getContractFactory("MyNFT");

        const nft = await NFT.deploy();

        expect(await nft.name()).to.equal("My NFT Collection");
        expect(await nft.symbol()).to.equal("MNFT");

    });

});
