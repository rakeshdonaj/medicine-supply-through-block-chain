# Detailed System Workflow (Step-by-Step)

This guide explains exactly what to click during your project demo.

### Step 1: Registration
- Open the browser to `http://localhost:8080/Medical_SCM/`.
- Click **"Join us"**.
- Create 4 accounts:
  1. Manufacturer (e.g., `sunpharma@test.com`)
  2. Distributor (e.g., `medplus@test.com`)
  3. Hospital (e.g., `apollo@test.com`)
  4. Patient (e.g., `patient@test.com`)

### Step 2: Manufacturer Adds Medicine
- Login as **Manufacturer**.
- Click **"Add Item"**.
- Enter medicine details (e.g., Paracetamol, Expiry: 2028).
- **Click Submit**.
- Now go to **"View Item"**. You will see a **PublicKey**. This is the **Secret Key**. Keep this key safe!

### Step 3: Manufacturer Shares Medicine
- In "View Item", click **"Share"**.
- Select the **Distributor** (`medplus`).
- Enter quantity (e.g., 500) and click **"Share"**.

### Step 4: Distributor Requests Key
- Login as **Distributor**.
- Go to **"Manufacturer Item Shared Info"**.
- You see the medicine but can't see the full details yet.
- Click **"Request SecretKey"**.

### Step 5: Manufacturer Sends Key
- Login back as **Manufacturer**.
- Go to **"Key Request from Distributor"**.
- Click **"Sent Key to Distributor"**. (In a real system, the key is sent via SMS).

### Step 6: Distributor Verifies
- Login back as **Distributor**.
- Go to **"Manufacturer Item Shared Info"**.
- Click **"Decrypt QRCode"**.
- Paste the **Secret Key** (the PublicKey you saw earlier).
- If correct, you will see the medicine data!

### Step 7: Forward to Hospital/Patient
- Now the Distributor can click **"Share Item to Hospital"** to move the medicine further down the chain.
