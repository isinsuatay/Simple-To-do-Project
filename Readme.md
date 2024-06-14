# Simple To-Do

## About me
LinkedIn: (https://www.linkedin.com/in/%C4%B1%C5%9F%C4%B1nsu-atay-948496299/)

## Project Description
This project is a simple to-do list application implemented in Motoko for the Internet Computer. It allows users to add, complete, and view to-do items.

## Smart Contract Address
The smart contract address will be available after deployment.

## Installation Prerequisites
- Install the Internet Computer SDK (IC SDK)
- Install Node.js

## Steps to Run the Project Locally
1. Clone the repository.
2. Navigate to the project directory: `cd examples/motoko/simple-to-do`
3. Start the local Internet Computer replica: `dfx start --background`
4. Deploy the canister: `dfx deploy`
5. Add to-do items using the `addTodo` method:
   ```sh
   dfx canister call simple_to_do addTodo '("Create a project")'
   dfx canister call simple_to_do addTodo '("Build the project")'
   dfx canister call simple_to_do addTodo '("Deploy the project")'
