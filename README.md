# Unsecure Ownership Transfer in DApp Contract

This repository demonstrates a common vulnerability in decentralized applications (DApps) built using Solidity: the lack of ownership checks in the `transferOwnership` function.

## Vulnerability Details

The `transferOwnership` function in the original contract allows any user to change the contract's ownership, bypassing authorization checks. This vulnerability could lead to malicious actors taking over the contract and potentially causing significant damage.

## Solution

The provided solution addresses this vulnerability by adding an `onlyOwner` modifier to the `transferOwnership` function. This modifier ensures that only the current owner can call this function.

## Usage

1. Clone this repository.
2. Compile and deploy the original (vulnerable) contract.
3. Observe how any user can call `transferOwnership` and change the contract's ownership.
4. Compile and deploy the patched (secure) contract.
5. Observe how only the owner can now call `transferOwnership`.

This example highlights the importance of careful access control in DApp development.