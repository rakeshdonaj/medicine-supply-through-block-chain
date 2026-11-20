# Project Report: Medical Supply Chain Management System

## 1. Abstract
The "Medical Supply Chain Management System" is a secure web-based application designed to track the movement of pharmaceutical products from the Manufacturer to the end Patient. By integrating concepts from **Blockchain Technology** (Hashing and QR Codes), the system ensures that every medicine is authentic and hasn't been tampered with or replaced by counterfeit drugs.

## 2. Introduction
Drug counterfeiting is a global problem that causes billions of dollars in losses and, more importantly, endangers human lives. This project provides a transparent, end-to-end tracking solution.

## 3. System Modules
### A. Manufacturer Module
- Registration and Secure Login.
- Add New Medicine (Item).
- QR Code Generation (Encrypted).
- Secret Key (Public Key) management.
- Sharing medicine with approved Distributors.

### B. Distributor Module
- View items shared by Manufacturers.
- Request Secret Keys for verification.
- Decrypt QR codes to verify authenticity.
- Forwarding medicine to Hospitals and Patients.

### C. Hospital & Patient Modules
- Track the history of the medicine.
- Final verification of authenticity using the QR code and Secret Key.

## 4. System Architecture
- **Frontend**: HTML5, CSS3, JavaScript, JSP.
- **Backend**: Java Servlets (Java EE).
- **Database**: MySQL 8.0/9.0.
- **Server**: Apache Tomcat 9.0.
- **Encryption**: SHA-1 Hashing Algorithm.

## 5. Database Design
The system uses the following key tables:
- `registration`: Stores user profiles and roles.
- `iteminfo`: Stores medicine details and their SHA-1 hashes.
- `shareiteminfo`: Tracks the transfer of medicine between roles.
- `requestkeyfromdist`: Manages the security key exchange.
