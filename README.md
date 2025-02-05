# 💳 Loan Management System

The **Loan Management System** is a comprehensive web-based application designed to streamline and automate loan management processes. Built using PHP, MySQL, HTML, CSS, and JavaScript, this system provides an efficient solution for managing loans, customers, repayments, and financial reporting.

---

## 🚀 Features
- **Customer Management**: Add, update, and manage customer details.
- **Loan Disbursement**: Easily disburse loans to customers with detailed tracking.
- **Repayment Tracking**: Track loan repayments and generate repayment schedules.
- **Overdue Notifications**: Automatically notify customers of overdue payments.
- **Financial Reports**: Generate detailed financial reports for better decision-making.
- **Overdue Interest Calculation**: Automatically calculate overdue interest for late payments.
- **Dynamic and Scalable**: Designed to handle growing loan operations efficiently.
- **User-Friendly Interface**: Intuitive and easy-to-use interface for seamless navigation.

---

## 💻 Tech Stack
### Languages & Frameworks
![PHP](https://img.shields.io/badge/-PHP-777BB4?style=flat&logo=php&logoColor=white)
![HTML5](https://img.shields.io/badge/-HTML5-E34F26?style=flat&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/-CSS3-1572B6?style=flat&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)

### Database
![MySQL](https://img.shields.io/badge/-MySQL-4479A1?style=flat&logo=mysql&logoColor=white)

---

## 📦 Installation Guide

### Prerequisites
- **XAMPP** (or any local server environment with Apache and MySQL)
- **Git** (optional, for cloning the repository)

### Steps
1. **Clone the Repository**  
   ```bash
   git clone https://github.com/LSAbeysekara/Loan-Management-System.git

Alternatively, download the ZIP file and extract it.

Set Up the Database

Open phpMyAdmin or any MySQL client.
Create a new database named lsl_db.
Import the provided SQL file (lsl_db.sql) into the database.
Configure the Application

Open the config.php file in the includes folder.
Update the database connection details:
php
Copy
Edit
$host = "localhost";
$username = "root";
$password = "";
$database = "lsl_db";
Run the Application

Move the project folder to the htdocs directory (if using XAMPP).
Start Apache and MySQL from the XAMPP control panel.
Open your browser and navigate to:
perl
Copy
Edit
http://localhost/lsl
🌟 Usage
Admin Login

Manage Customers
Add new customers and update their details.

Disburse Loans
Create new loans for customers and track their status.

Track Repayments
View repayment schedules and mark payments as completed.

Generate Reports
Access financial reports for insights into loan operations.

🤝 Contributing
Contributions are welcome! Follow these steps to contribute:

Fork the repository.
Create a new branch:
bash
Copy
Edit
git checkout -b feature/YourFeatureName
Commit your changes:
bash
Copy
Edit
git commit -m 'Add some feature'
Push to the branch:
bash
Copy
Edit
git push origin feature/YourFeatureName
Open a pull request.
📜 License
This project is licensed under the MIT License. See the LICENSE file for details.

📫 Contact
For any questions or feedback, feel free to reach out:

vbnet
Copy
Edit

Let me know if you'd like any further tweaks! 😊
