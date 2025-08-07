 🎓 University Database Project

This project is a relational database design and implementation for a university management system. It includes SQL scripts to create, populate, and query the database.

## project description

The South Lebanon Relief Project aims to address the pressing needs of displaced families by developing a comprehensive Database Management System (DBMS). This report details the project's inspiration, design, and schema. The DBMS encompasses entities such as donors, goods, warehouses, staff, transactions, vendors, equipment, families, and family members. The system is designed to streamline resource distribution, ensure data security, and support efficient management of donations and aid. By leveraging robust database principles and relationships, the project seeks to enhance the operational efficiency and responsiveness of relief efforts in conflict-affected areas.


## Entities and Relationships

The DBMS encompasses six pivotal entities, each fulfilling a vital role in supporting refugees:

### 1. Donors:
   - DID (primary key): Donor ID number.
   - Name
   - Contact Information:
     - Phone number: A contact number for the donor.
     - Email: An email address for communication.
     - Physical address: The donor's physical address for coordination and acknowledgment.
   - Donation Type:
     - Monetary: Contributions in the form of funds.
     - Goods: Donated items such as clothing, food, or medical supplies.


   - Example:
     - Name: John Smith
     - Phone number: +1234567890
     - Email: john@example.com
     - Physical address: 123 Main Street, City, Country
     - Donation Type: Goods (Clothing, Food), Monetary
     - DID (primary key): An identifier to uniquely track each donor's contributions in the system (e.g., 1001).

### 2. Goods:
   -GID (primary key)
   -DID (Foreign key)
   - Description: Brief details or name of the donated goods.
   - Expiration Date: For perishable items, the date by which the goods should be used.
   - Condition: State of the goods (e.g., new, gently used, damaged).
   - Cost: Value or estimated cost of the goods.
   - Category: Categorization of goods for organizational purposes.
   - Quantity: The quantity of each item available in stock.

   - Example:
     - Description: Rice
     - Expiration Date: 2024-06-30
     - Condition: New
     - Cost: $10 per kilogram
     - Category/Classification: Food
     - Quantity: 100 kilograms
     - GID (primary key): An identifier to uniquely identify each item in the system (e.g., 2001).
     - DID: Foreign key referencing the donor associated with the goods.


### 3. Warehouse:
   - Name
    - Location
      -  WID (primary key): Warehouse ID
      -  SID: Staff ID
      -  VID: Vendor ID
      -  GID: Good ID
      -  DID: Donor ID
      
   - Storage Areas:
     - Sections: Different areas within the warehouse for organizing goods (e.g., refrigerated section, dry section).
   - Capacity: The total storage capacity of the warehouse and the remaining space.
   - Security Measures: Measures implemented to safeguard the warehouse and its contents.
   - Climate Control: Capability of the warehouse to control temperature and humidity.
   - Equipment: Types of equipment available for handling and moving goods.
   - Insurance Coverage: Details of insurance coverage for the warehouse facility and stored goods.


   - Example:
     - Name: Lebanon Relief Warehouse
     - Location: Beirut, Lebanon
     - Capacity: 1000 square meters (750 square meters used)
     - Sections: Dry storage, refrigerated section
     - Security Measures: Surveillance cameras, access control system
     - Climate Control: Yes
     - Equipment: Forklifts, pallet jacks
     - Insurance Coverage: Property and liability insurance
     - WID: An identifier to uniquely identify each warehouse (e.g., 3001).


### 4. Staff:
   - SID (primay key): Staff ID
   - Name
   - Role: Job title or position within the organization.
   - Salary: Compensation or wages for the staff member.
   - Working Hours: Schedule or hours of work for the staff member.

   - Example:
     - Name: Sarah Johnson
     - Role: Warehouse Manager
     - Salary: $50,000 annually
     - Working Hours: Monday to Friday, 9:00 AM to 5:00 PM
     - SID (primary key): An identifier to uniquely identify each staff member (e.g., 4001).


### 5. Transactions:
   - TID (primay key): Transaction ID
   - GID : Goods ID
   - VID: Vendor ID
   - Quantity: The quantity of goods involved in the transaction.
   - Cost: Total cost of the transaction.
   - Date: Date of the transaction.

  
  - Example:
     - Quantity: 50 kilograms of rice
     - Cost: $500
     - Date: 2024-04-14
     - TID (primary key): An identifier to uniquely identify each transaction (e.g., 5001).
     - GID: Foreign key referencing the goods involved in the transaction.
     - VID: Foreign key referencing the vendor associated with the transaction.

### 6. Vendor:
   - VID (primay key): Vendor ID
   - Name
   - Phone number: Contact number for the vendor.

   - Example:
     - Name: XYZ Inc.
     - Phone number: +1234567890
     - VID (primary key): An identifier to uniquely identify each vendor (e.g., 6001).

### 7. Equipment:
- EID (Equipment ID): (Primary key) Unique identifier for each piece of equipment in the database.
- Quantity: Quantity of the equipment available.
- Last_Maintained: Date and time when the equipment was last maintained.
- Type: Type or category of the equipment.

### 8. Uses:
- SID (Staff ID): Foreign key referencing the primary key in the Staff table, indicating the staff member using the equipment.
- EID (Equipment ID): Foreign key referencing the primary key in the Equipment table, indicating the equipment being used.
- Start_time: Date and time when the equipment usage started.
- End_Time: Date and time when the equipment usage ended.

### 9. Families:

- FID (Family ID): (Primary key) Unique identifier for each family in the database.
- Health_info: Information about the health status and medical needs of family members.
- Social_Support_Network: Details about the family's social connections and support system.
- Housing_conditions: Description of the family's living conditions, including housing type and any challenges.
- Email: Email address of the family for communication purposes.
- Phone_num: Phone number(s) to reach the family.
- Main_address: Primary address of the family.
- Alternative_address: Alternate address, if applicable.
- Guardian: Name of the guardian or primary caregiver.
- Special_needs: Any special needs or requirements of family members.


### 10. Family_Members:

- MID (Member ID): (Primary key) Unique identifier for each family member in the database.
- FID (Family ID): Foreign key referencing the primary key in the Families table, indicating the family to which the member belongs.
- Date_Of_birth: Date of birth of the family member.
- Phone_num: Phone number(s) of the family member.
- Gender: Gender of the family member.
- Health_need: Any specific health needs or conditions of the family member.

## 📁 Project Structure
 ```
University-Database-Project/
├── create_schema.sql # SQL script to create tables and relationships
├── insert_data.sql # SQL script to populate the database with sample data
├── queries.sql # SQL script containing various example queries
 ```

## 🛠️ Technologies Used

- **Database**: MySQL
- **Tools**: MySQL Workbench / phpMyAdmin / CLI

## ⚙️ How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/Husseinay23/University-Database-Project.git
   cd University-Database-Project
Open your MySQL client.

Run the scripts in order:

create_schema.sql – to create tables

insert_data.sql – to add initial data

queries.sql – to execute predefined queries

📌 Use Case
This project demonstrates:

ER modeling

Relational schema design

SQL constraints (PK, FK, etc.)

Real-world university operations (student enrollments, courses, instructors, etc.)

👨‍💻 Author
Hussein Ayoub

