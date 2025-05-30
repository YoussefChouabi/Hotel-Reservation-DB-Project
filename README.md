# Hotel-Reservation-DB-Project


## Overview
This project involves the creation and management of a hotel reservation database system. It includes two main parts:
1. **Database Creation and Querying**: Designing a MySQL database based on a given conceptual model (MCD) and writing SQL queries to interact with the data.
2. **Web Interface Development**: Building a Streamlit-based web interface using Python and SQLite to allow users to manage reservations, clients, and room availability.

## Project Structure
- **Part 1**: MySQL database creation, data insertion, and SQL queries.
- **Part 2**: Streamlit web interface for database interaction.

## Technologies Used
- **Database**: MySQL (Part 1), SQLite (Part 2)
- **Backend**: Python
- **Frontend**: Streamlit

## Demo
Watch the interface in action:  
[![YouTube Demo](https://img.shields.io/badge/YouTube-Demo-red)](https://youtu.be/05b2z9lpdeA?si=InPTX8iDfE6sh_Gv)

---

## Part 1: Database Creation and Querying
### Tasks:
1. Create the database schema in MySQL Workbench based on the provided MCD.
2. Populate tables with the given data.
3. Write SQL queries to:
   - Display reservations with client names and hotel cities.
   - List clients from Paris.
   - Count reservations per client.
   - Count rooms per room type.
   - Show available rooms for a given date range.

### Deliverables:
- PDF document for relational algebra queries.
- SQL scripts for table creation and queries.

## Part 2: Web Interface Development
### Features:
1. View reservations.
2. View clients.
3. Check room availability for a specified period.
4. Add a new client.
5. Add a new reservation.

### Steps:
1. Create the SQLite database.
2. Develop the Streamlit interface.

### Deliverables:
- GitHub repository with the code.
- Video demonstration of the interface (hosted on Drive or YouTube).

## Setup Instructions
### Prerequisites:
- MySQL Workbench (for Part 1)
- Python 3.x
- Streamlit (`pip install streamlit`)
- SQLite3

### How to Run:
1. Clone the repository:
   ```bash
   git clone https://github.com/YoussefChouabi/Hotel-Reservation-DB-Project.git

2. Navigate to the project directory:
   ```bash
    cd Hotel-Reservation-DB-Project
   
3. For Part 1, execute the SQL scripts in MySQL Workbench.

4. For Part 2, run the Streamlit app:
   ```bash
    streamlit run app.py

### Data Sources
The data for the project is provided in the annex of the project PDF. Tables include:

 - Hotel
 - Client
 - Prestation
 - Type Chambre
 - Chambre
 - Réservation
 - Évaluation

### Contributors
  [Youssef Chouabi]

### License
  This project is open-source and available under the MIT License.
