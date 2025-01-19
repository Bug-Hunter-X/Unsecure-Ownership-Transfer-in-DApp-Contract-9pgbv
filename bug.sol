function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(_owner, newOwner);
  _owner = newOwner;
}

// The problem is that the transferOwnership function doesn't check if the caller is the current owner.
// This means that anyone can call this function and change the owner of the contract.