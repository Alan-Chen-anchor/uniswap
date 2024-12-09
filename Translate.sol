// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Translater
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Translater {

    struct PermitDetails {
        // ERC20 token address
        address token;
        // the maximum amount allowed to spend
        uint160 amount;
        // timestamp at which a spender's token allowances become invalid
        uint48 expiration;
        // an incrementing value indexed per owner,token,and spender for each signature
        uint48 nonce;
    }

    struct PermitBatch {
        // the permit data for multiple token allowances
        PermitDetails[] details;
        // address permissioned on the allowed tokens
        address spender;
        // deadline on the permit signature
        uint256 sigDeadline;
    }

    /// @notice The permit message signed for a single token allowance
    struct PermitSingle {
        // the permit data for a single token alownce
        PermitDetails details;
        // address permissioned on the allowed tokens
        address spender;
        // deadline on the permit signature
        uint256 sigDeadline;
    }

    /// @notice Details for a token transfer.
    struct AllowanceTransferDetails {
        // the owner of the token
        address from;
        // the recipient of the token
        address to;
        // the amount of the token
        uint160 amount;
        // the token to be transferred
        address token;
    }

    // // 0x00 <= command < 0x08
    function V3_SWAP_EXACT_IN(address receipent, uint256 amountIn, uint256 amountOutMin, bytes calldata path, bool payerIsUser) public payable  {
    }

    function V3_SWAP_EXACT_OUT(address receipent, uint256 amountIn, uint256 amountOutMax, bytes calldata path, bool payerIsUser) public payable  {
    }

    function PERMIT2_TRANSFER_FROM(address token, address receipent, uint256 amount) public payable  {
    }

    function PERMIT2_PERMIT_BATCH(PermitBatch calldata info, bytes calldata amount) public payable  {
    }

    function SWEEP(address token, address receipent, uint256 amountMin) public payable  {
    }

    function TRANSFER(address token, address receipent, uint256 value) public payable  {
    }

    // 0x06
    function PAY_PORTION(address token, address receipent, uint256 bips) public payable  {
    }

    // 0x08 <= command < 0x10
    function V2_SWAP_EXACT_IN(address receipent, uint256 amountIn, uint256 amountOutMin, address[] calldata path, bool payer) public payable  {
    }

    function V2_SWAP_EXACT_OUT(address receipent, uint256 amountIn, uint256 amountOutMax, address[] calldata path, bool payerIsUser) public payable  {
    }

    function PERMIT2_PERMIT(PermitSingle calldata info, bytes calldata amount) public payable  {
    }

    function WRAP_ETH(address token, uint256 amount) public payable  {
    }

    function UNWRAP_WETH(address token, uint256 amountMin) public payable  {
    }

    function PERMIT2_TRANSFER_FROM_BATCH(AllowanceTransferDetails[] calldata info, uint256 amountMin) public payable  {
    }

    // 0x10 <= command < 0x21
    function SEAPORT(uint256 value, bytes calldata data) public payable  {
    }

    // 0x11
    function LOOKS_RARE_721(uint256 value, bytes calldata data, address recipent, address token, uint256 id) public payable  {
    }

    function NFTX(uint256 value, bytes calldata data) public payable  {
    }

    function CRYPTOPUNKS(uint256 punkid, address recipent, uint256 value) public payable  {
    }

    // 0x16
    function LOOKS_RARE_1155(uint256 value, bytes calldata data, address recipient, address token, uint256 id, uint256 amount) public payable  {
    }

    function OWNER_CHECK_721(address owner, address token, uint256 id) public payable  {
    }

    function OWNER_CHECK_1155(address owner, address token, uint256 id, uint256 amountMin) public payable  {
    }

    function SWEEP_ERC721(address owner, address recipient, uint256 tokenid) public payable  {
    }

    // 0x1b
    function X2Y2_721(uint256 value, bytes calldata data, address recipient, address token, uint256 id) public payable  {
    }

    function SUDOSWAP(uint256 value, bytes calldata data) public payable  {
    }

    function NFT20(uint256 value, bytes calldata data) public payable  {
    }

    function X2Y2_1155(uint256 value, bytes calldata data, address recipient, address token, uint256 id, uint256 amount) public payable  {
    }

    function FOUNDATION(uint256 value, bytes calldata data, address recipient, address token, uint256 id) public payable  {
    }

    function SWEEP_ERC1155(address token, address recipient, uint256 id, uint256 min) public payable  {
    }
}

// uniswap -> existing parser -> translater
