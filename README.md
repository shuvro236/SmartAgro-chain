# 🌾 SmartAgroChain

A Blockchain-based Agricultural Supply Chain System that ensures fair pricing, transparency, and secure transactions between farmers, retailers, and community validators using Ethereum smart contracts and Web3.js.

---

## 🚀 Overview

SmartAgroChain is a decentralized application (dApp) that removes intermediaries in agricultural trading and ensures:

- Transparent pricing system
- Fair farmer compensation
- Secure escrow-based payments
- Community-driven price validation (51% approval)
- Real-time auction mechanism

---

## 🧠 Key Features

### 👨‍🌾 Farmers
- Add agricultural products to blockchain
- Participate in price approval voting
- Receive fair and transparent payments

### 🏛️ Community
- Set initial product price
- Start and stop auctions
- Approve final price using 51% voting system

### 🏪 Retailers
- Place bids in live auctions
- Participate in competitive pricing
- Automatically pay through escrow system

### 🔐 Escrow System
- Secure fund holding in smart contract
- Automatic release after delivery confirmation
- Refund option if conditions fail

---

## 🏗️ System Architecture

Frontend (HTML + Web3.js)
        │
        ▼
Ethereum Smart Contracts
        │
        ├── AgroChain.sol (Core logic)
        ├── Escrow.sol (Payment security)
        └── Roles.sol (Access control)
        │
        ▼
MetaMask Wallet

---

## ⚙️ Tech Stack

- Solidity (Smart Contracts)
- Ethereum Blockchain
- Web3.js
- HTML, CSS, JavaScript
- Bootstrap 5
- MetaMask
- Remix IDE

---

## 📁 Project Structure

smartagrochain/
│
├── contracts/
│   ├── AgroChain.sol
│   ├── Escrow.sol
│   ├── Roles.sol
│
├── frontend/
│   ├── index.html
│   ├── app.js
│   ├── contract.js
│   ├── AgroChain.json
│
└── README.md

---

## 🔄 Workflow

1. Farmer adds product to system  
2. Community sets initial price  
3. Retailers participate in auction  
4. Highest bids collected  
5. Community approves final price (51%)  
6. Retailer deposits funds into escrow  
7. Delivery verified → funds released  

---

## 🧪 How to Run

### 1. Deploy Smart Contract
- Open Remix IDE
- Compile Solidity contracts
- Deploy using MetaMask (Sepolia testnet recommended)
- Copy contract address

---

### 2. Configure Frontend
Replace contract address in `contract.js`:

```javascript
const contractAddress = "YOUR_CONTRACT_ADDRESS";