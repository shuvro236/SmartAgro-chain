// FARMER
async function addProduct() {

  await contract.methods.addProduct(
    document.getElementById("name").value,
    document.getElementById("type").value,
    document.getElementById("qty").value,
    document.getElementById("cost").value
  ).send({ from: account });

  alert("Product Added");
}

// COMMUNITY
async function startAuction() {

  await contract.methods.startAuction(
    document.getElementById("pId").value,
    document.getElementById("price").value
  ).send({ from: account });

  alert("Auction Started");
}

async function stopAuction() {

  await contract.methods.stopAuction(
    document.getElementById("pId").value
  ).send({ from: account });

  alert("Auction Ended");
}

// RETAILER
async function bid() {

  const value = web3.utils.toWei(
    document.getElementById("bidAmount").value,
    "ether"
  );

  await contract.methods.bid(
    document.getElementById("bidId").value
  ).send({
    from: account,
    value: value
  });

  alert("Bid Placed");
}

// ESCROW
async function createEscrow() {

  const demand = document.getElementById("demand").value;

  const value = web3.utils.toWei("1", "ether");

  await contract.methods.createEscrow(
    document.getElementById("escrowId").value,
    demand
  ).send({
    from: account,
    value: value
  });

  alert("Escrow Created");
}

async function approve() {

  await contract.methods.approvePrice(
    document.getElementById("approveId").value
  ).send({ from: account });

  alert("Approved");
}