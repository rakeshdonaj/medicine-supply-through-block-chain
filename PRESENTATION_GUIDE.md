# Presentation Guide & Q&A

## 🎤 How to Introduce Your Project
"Good morning everyone. We are team **Shivaprasad, Rakesh, Vidya, and Nisarga**. Our project is the **Medical Supply Chain Management System**. Our goal is to fight the global problem of fake medicines. We use SHA-1 hashing and encrypted QR codes to create a secure, transparent chain from the factory to the patient."

## ❓ Common Questions from Examiners

### 1. "How is this related to Blockchain?"
- **Answer**: "Blockchain is about data integrity. In our system, we generate a SHA-1 hash for every medicine. This hash acts as a digital fingerprint. If anyone changes the medicine's data, the hash breaks, just like in a blockchain."

### 2. "Why can't the Distributor just change the medicine name?"
- **Answer**: "They can't, because the medicine is locked by a Secret Key. Only the person with the key can decrypt the QR code and see the original details entered by the Manufacturer."

### 3. "What happens if the database is deleted?"
- **Answer**: "The system is backed up by regular SQL exports. However, for a production system, we would use a distributed database for even more security."

### 4. "How does the Patient know the medicine is real?"
- **Answer**: "The patient scans the QR code and enters the Secret Key. If the decrypted data matches what is on the bottle, the medicine is 100% authentic."

## 💡 Team Tips
- **Shivaprasad**: Focus on how the whole system connects.
- **Rakesh**: Show the UI and how easy it is to use.
- **Vidya**: Explain the encryption part.
- **Nisarga**: Explain the different user roles.
