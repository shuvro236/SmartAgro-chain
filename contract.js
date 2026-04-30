const contractAddress = "";

const abi = [
 
];

let web3;
let contract;
let account;

async function connectWallet() {
  if (window.ethereum) {
    web3 = new Web3(window.ethereum);

    await window.ethereum.request({ method: "eth_requestAccounts" });

    const accounts = await web3.eth.getAccounts();
    account = accounts[0];

    document.getElementById("account").innerText = account;

    contract = new web3.eth.Contract(abi, contractAddress);

    console.log("Connected:", account);
  } else {
    alert("Install MetaMask");
  }
}