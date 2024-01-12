pragma solidity 0.8.23 ;
contract SpecialVars {
    
    function getBlockHash (uint blockNo) public view returns (bytes32) { 
        // Hash of the given block when blocknumber is one of the 256 most recent blocks; otherwise returns zero
        return blockhash(blockNo);
    }
    function getBaseFee() public view returns (uint256) { 
        // Current block’s base fee (EIP-3198 and EIP-1559)
        return block.basefee ;
    }
    function getChainId() public view returns (uint256) { 
        // Current chain id
        return  block.chainid;
    }
    function getCoinBase() public view returns (address ) {
        // Current block miner’s address 
        return block.coinbase;
    }
    function getDifficulty() public view returns (uint256) { 
        // Current block difficulty (EVM < Paris). For other EVM versions it behaves as a deprecated alias for block.prevrandao (EIP-4399)
        return  block.difficulty;
    }
    function getGasLimit() public view returns (uint256) { 
        // Current block gaslimit
        return block.gaslimit;
    }
    function getBlockNumber() public view returns (uint256) { 
        // Current block number
        return block.number;
    }
    function getPrevRandao() public view returns (uint256) { 
        // Random number provided by the beacon chain (EVM >= Paris)
        return block.prevrandao;
    }
    function getTimestamp() public view returns (uint256) { 
        // Current block timestamp as seconds since unix epoch
        return block.timestamp;
    }
    function getGasLeft() public view returns (uint256) {  
        // Remaining gas
        return gasleft();
    }
    function getMsgData() public view returns (bytes calldata) { 
        // Complete calldata
        return msg.data;
    }
    function getSender() public view returns (address) { 
        // Sender of the message (current call)
        return msg.sender;
    }
    function getSig4Bytes() public view returns (bytes4) { 
        // First four bytes of the calldata (i.e. function identifier)
        return  msg.sig;
    }
    function getValue() public payable returns (uint256) { 
        // Number of wei sent with the message
        return msg.value;
    }
    function getGasPrice() public payable returns (uint256) {
        // Gas price of the transaction 
        return tx.gasprice;
    }
    function getOrigin() public view returns (address) { 
        // Sender of the transaction (full call chain)
        return tx.origin ;
    }
}
