# 🌾 SmartAgroChain  
### Blockchain-Based Agricultural Supply Chain System

![Status](https://img.shields.io/badge/status-active-brightgreen)
![Blockchain](https://img.shields.io/badge/blockchain-Ethereum-blue)
![Web3](https://img.shields.io/badge/web3.js-enabled-orange)
![License](https://img.shields.io/badge/license-academic-lightgrey)

---

## My Project Document

[👀 View the paper](pdf/Fydp_2_Conference__-1.png)

## 🚀 Overview

**SmartAgroChain** is a decentralized agricultural marketplace that eliminates intermediaries and ensures **fair pricing, transparency and secure transactions** between farmers, retailers and community validators using Ethereum smart contracts and Web3.js.

The system introduces a **trustless auction + community approval mechanism** to guarantee fairness in agricultural trade.

---

## 🎯 Problem Statement

Traditional agricultural supply chains suffer from:

- ❌ Exploitation of farmers by intermediaries  
- ❌ Lack of transparent pricing systems  
- ❌ Delayed and insecure payments  
- ❌ No trusted product valuation mechanism  

---

## 💡 Solution

SmartAgroChain solves these problems using blockchain:

- 🔗 Direct farmer-to-retailer trading  
- 🗳 Community-based price validation (51% voting)  
- 🏦 Secure escrow-based payment system  
- 📊 Real-time transparent auctions  

---

## 🌟 Key Features

### 👨‍🌾 Farmers
- Add agricultural products to blockchain  
- Receive fair, community-approved pricing  
- Get automatic payments via escrow  

### 🏛 Community Validators
- Set initial product pricing  
- Participate in **51% consensus voting system**  
- Ensure fair market valuation  

### 🏪 Retailers
- Participate in live auctions  
- Place competitive bids in real time  
- Purchase products transparently  

### 🔐 Escrow System
- Secure fund locking in smart contract  
- Automatic release after delivery confirmation  
- Refund support for failed transactions  

---

## 🏗 System Architecture

```
Frontend (HTML + Web3.js)
        │
        ▼
Ethereum Smart Contracts
        │
        ├── AgroChain.sol → Core Marketplace Logic
        ├── Escrow.sol → Payment Security Layer
        └── Roles.sol → Access Control System
        │
        ▼
MetaMask Wallet Integration
```

---

## ⚙️ Tech Stack

- 🟣 Solidity (Smart Contracts)  
- ⛓ Ethereum Blockchain  
- 🌐 Web3.js  
- 🎨 HTML, CSS, JavaScript  
- 🎯 Bootstrap 5  
- 🦊 MetaMask  
- 🧪 Remix IDE  

---

## 📁 Project Structure

```
smartagrochain/
│
├── contracts/
│   ├── AgroChain.sol
│   ├── Escrow.sol
│   └── Roles.sol
│
├── frontend/
│   ├── index.html
│   ├── app.js
│   ├── contract.js
│   └── AgroChain.json
│
└── README.md
```

---

## 🔄 Workflow

1. 👨‍🌾 Farmer adds product to blockchain  
2. 🏛 Community sets initial price  
3. 🏪 Retailers participate in live auction  
4. 📊 Bids are recorded in real time  
5. 🗳 Community approves final price (51% consensus)  
6. 💰 Retailer deposits funds into escrow  
7. 🚚 Delivery verified → funds automatically released  

---

## 🔐 Smart Contract Modules

### 🧠 AgroChain.sol
- Product listing system  
- Auction mechanism  
- Community voting system  

### 💳 Escrow.sol
- Secure fund storage  
- Conditional release logic  
- Refund mechanism  

### 🔑 Roles.sol
- Farmer / Retailer / Validator roles  
- Access control management  

---

## 📡 Core Functionalities

- 📦 Blockchain-based product listing  
- 🔄 Live auction system  
- 💰 Automatic final price calculation  
- 🔐 Escrow-based secure payments  
- 📊 Real-time UI updates via events  

---

## 🧪 How to Run 

### 1. Start Ganache
- Open **Ganache GUI** OR run CLI:
```bash
ganache
```

- Copy:
  - RPC URL (usually `http://127.0.0.1:7545`)
  - Accounts + Private Keys

---

### 2. Deploy Smart Contracts

- Open **Remix IDE**
- Compile all `.sol` files
- Connect MetaMask → Ganache network
- Deploy contracts
- Copy deployed contract address

---

### 3. Configure MetaMask

- Add network:
```
RPC URL: http://127.0.0.1:7545
Chain ID: 1337 (or 5777 depending on Ganache)
```

- Import Ganache account using private key

---

### 2. Configure Frontend

In `contract.js`, replace:

```javascript
const contractAddress = "YOUR_CONTRACT_ADDRESS";
```

Paste ABI into:

```
const abi = [YOUR_ABI];
```

---

### 3. Run Frontend

You can run it using:

```
index.html (direct open)
```

OR

```bash
npx serve .
```

---

## 📈 Future Improvements

- 📡 IoT-based crop verification  
- 🤖 AI-based price prediction system  
- 📱 Mobile dApp version  
- 📊 Advanced analytics dashboard  
- 🔐 Zero-Knowledge Proof identity system  

---

## 👨‍💻 Developer

**Shuvro Sarker**  
Blockchain & Full-Stack Developer  
📍 Dhaka, Bangladesh  

- GitHub: github.com/shuvro236  
- Email: shuvrosarker.247@gmail.com  

---

## 📜 License

This project is developed for **academic and research purposes**.

---

## ⭐ Support

If you like this project:

- ⭐ Star the repository  
- 🍴 Fork it  
- 🚀 Share it  

---

> ⚡ Built with Blockchain technology to empower farmers and ensure fair global trade.