💰 Immutable Donation Tracker (Solidity Smart Contract)

An immutable, transparent donation tracking system built on Ethereum.
This contract allows anyone to donate Ether to any wallet address, while permanently recording all donation history on-chain.

Every donation is publicly viewable, timestamped, and stored forever — ensuring transparency and trust in the donation process.

🧩 Features

🔒 Immutable Records — All donations and timestamps are stored permanently on the blockchain.

💸 Instant Transfers — Donated ETH is sent directly to the recipient’s wallet.

📜 Transparent History — Anyone can view how much a recipient has received and from whom.

⚡ Lightweight & Beginner-Friendly — Uses simple mappings, structs, and events — perfect for learning Solidity basics.

🧠 How It Works

1. Deploy the contract on Remix or a test network (like Sepolia).

2. Call the donate(address recipient) function:

    -Enter the recipient’s wallet address.

    -Add some ETH value in the “Value” field.

3. Once the transaction confirms:

    -The donation record is stored immutably.

    -The ETH is instantly transferred to the recipient.

    -The DonationMade event is emitted.

4. You can check:

    -getTotalDonations(address recipient) → total ETH donated to that recipient.

    -getDonationHistory(address recipient) → detailed donation list (donor, amount, timestamp).

CONTRACT ADDRESS: 0x2a2b2a6D813e7Cb7C4176e50b52904EaB39De4FF
screenshot:
<img width="1920" height="1080" alt="celosepolia" src="https://github.com/user-attachments/assets/616604bd-2819-4b50-a834-f175585d367b" />
