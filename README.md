# Kalm
Simple Ethereum smart contract for fungible token ERC-20 


## Installation

### Prerequisites
   - [Foundry](https://book.getfoundry.sh/getting-started/installation.html)

### Steps
1. Clone the repository 
   ```shell
    git clone https://github.com/ramadanWasfi/Ethereum-Fungible-Token.git
   ``` 
   ``` shell
   cd ERC20
   ```

2. install the dependencies 
   ```shell
    forge install
   ``` 

### Compilation
Compile the smart contracts using foundry:
```shell
forge build
``` 

### Testing
Run the foundry tests
```shell
forge test
```

### Deployment
#### Local Test Network (Anvil)
1. Run an instance of Anvil network
   ```shell
      anvil
    ```
2. Open a new Terminal to deploy the contracts from it and type the following 
   - Create an account for deployment with private key and password
   ```shell
   cast wallet import LocalTestNetAccount --interactive
   ```
   - copy a private key from Anvil accounts and paste it in terminal prompt
   ``` shel
       Enter private key:
   ```
   - enter new password for the account in the terminal prompt
   ``` shel
       Enter password:
   ```
   - now you will have an account with its address you can use the account name and address for deployment
   ``` shell
   `LocalTestNetAccount` keystore was saved successfully. Address:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
   ```
   - `Account Name` : LocalTestNetAccount
   - `Account Address`: 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
   
   - deploy with the previously created account and the password
    ``` shell
    forge script script/DeployKalm.s.sol --rpc-url http://localhost:8545 --account LocalTestNetAccount --sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 --broadcast -vvv
   ```
   - enter the previously created password for this account
   ```shell
   ==========================
   Enter keystore password:
   ```
## Security Considerations
- Don't use this smart contract in production environment without auditing 

## Upgradeability
- this contract is not an upgradable contract. Once you deploy it you can't change its logic

## Disclaimer
- This project is for learning purposes only and not intended for production use



