function transferOwnership(newOwner) {
  require(msg.sender == _owner, "Ownable: caller is not the owner");
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(_owner, newOwner);
  _owner = newOwner;
}

// The solution adds a require statement to check if the caller is the current owner.
// If the caller is not the owner, the function will revert.