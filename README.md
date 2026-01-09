# Bash Systemd Service

Custom Bash script managed as a **systemd service**, implementing basic service lifecycle operations such as **start**, **stop**, **restart**, and **status**.  
This is an educational Linux system administration project focused on understanding how systemd interacts with custom scripts.

---

## 📌 Project Overview

This project demonstrates how to:
- Create a Bash script that behaves like a daemon
- Manage the script using **systemd**
- Handle process control using PID files
- Generate logs during execution
- Enable the service at system startup

It is intended as a **learning and portfolio project** for Linux system administration fundamentals.

---

## 🛠️ Technologies Used

- **Bash**
- **Linux**
- **systemd**

---

## 📂 Project Structure
bash-systemd-service/
├── dimoni.sh # Bash script managed by systemd
├── dimoni.service # systemd unit file
├── docs/
│ └── EL_DIMONI.pdf # Project documentation (optional)
└── README.md

