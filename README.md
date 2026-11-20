# Medical Supply Chain Management System (Medical_SCM)

A blockchain-based supply chain management application for tracking medical supplies from manufacturers to patients, ensuring data integrity and authenticity using QR codes and hash-based blocks.

## 🚀 Restored & Modernized Version
This project has been restored from a legacy Java EE codebase, modernized for portability, and deployed on a standard Tomcat 9 environment.

### Key Enhancements:
- **Portability**: Removed hardcoded `E:\` paths. Blockchain blocks and QR codes are now stored within the project structure (`Blocks/`, `QrCode/`).
- **Modern Build System**: Added a PowerShell-based build and deploy script (`build.ps1`) for seamless updates.
- **Configurable Database**: Database host is now configurable via system properties, supporting both local and containerized environments.
- **Tomcat 9 Compatibility**: Refactored to run on modern Tomcat versions with Java 21/Java 8.

---

## 🛠️ Prerequisites
- **Java**: JDK 8 or higher (Java 21 recommended).
- **Database**: MySQL 8.0+ (Database name: `medicine_scm`).
- **Server**: Apache Tomcat 9.0 (Included in this restoration).

---

## ⚙️ Setup & Installation

### 1. Database Setup
1. Open your MySQL terminal/Workbench.
2. Run the provided `med.sql` script to create the `medicine_scm` database and its tables.
   ```sql
   source d:/hospital/med.sql;
   ```
3. Ensure the credentials in `src/main/java/com/in/model/dbConnect.java` match your MySQL setup (Default: `root/root`).

### 2. Build & Deploy
Run the automated build script from the project root using PowerShell:
```powershell
.\build.ps1
```
This will:
- Compile all Java source files.
- Provision required runtime directories (`Blocks`, `QrCode`, etc.).
- Deploy the application to the `apache-tomcat-9.0.83` folder.

### 3. Run the Server
Start Tomcat from the included folder:
```powershell
cd .\apache-tomcat-9.0.83\bin\
.\startup.bat
```
The application will be available at: **`http://localhost:8080/Medical_SCM/`**

---

## 📦 Project Structure
- `src/main/java`: Backend Servlets and Logic (`com.in.model`, `com.in.control`).
- `src/main/webapp`: Frontend JSPs, CSS, and JS.
- `Blocks/`: Local storage for blockchain data blocks.
- `QrCode/`: Generated QR codes for item tracking.
- `build.ps1`: Automation script for compilation and deployment.

---

## 👥 Modules
1. **Admin**: Manage users and verify supply chain actors.
2. **Manufacturer**: Create and register new medical items, generate QR codes.
3. **Distributor**: Receive items and transfer to hospitals.
4. **Hospital**: Receive items and transfer to patients.
5. **Patient**: Verify item authenticity by scanning/decrypting QR codes.

---

## 🛡️ Blockchain Implementation
- Each transaction creates a new "Block" (stored in `Blocks/`).
- Blocks contain item details and a hash of the previous block, forming a chain.
- Data integrity is verified during every transfer.

---
**Developed with Antigravity AI**
