# Educase India Backend Internship Assignment
# School Management API (Node.js + Express + MySQL)

## Overview

This project implements a simple **School Management API** using **Node.js, Express.js, and MySQL**.
The API allows users to:

* Add a new school with location details.
* Retrieve a list of schools sorted by distance from a given location.

Distance calculation is implemented using the **Haversine Formula** to determine the nearest schools.

This project was developed as part of a **Backend Internship Assignment**.

---

## Tech Stack

* **Node.js**
* **Express.js**
* **MySQL**
* **mysql2**
* **dotenv**
* **cors**
* **body-parser**

---

## Project Structure

```
school-api
│
├── config
│   └── db.js
│
├── controllers
│   └── schoolController.js
│
├── routes
│   └── schoolRoutes.js
│
├── utils
│   └── distance.js
│
├── app.js
├── package.json
└── .env
```

---

## Database Setup

### Create Database

```sql
CREATE DATABASE school_management;
USE school_management;
```

### Create Table

```sql
CREATE TABLE schools (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  latitude FLOAT,
  longitude FLOAT
);
```

### Example Insert

```sql
INSERT INTO schools (name,address,latitude,longitude)
VALUES
("ABC School","Bangalore",12.9716,77.5946),
("Green Valley School","Hyderabad",17.3850,78.4867);
```

---

## Environment Variables

Create a `.env` file in the root folder.

Example:

```
PORT=5000

DB_HOST=sql12.freesqldatabase.com
DB_USER=your_username
DB_PASSWORD=your_password
DB_NAME=your_database
DB_PORT=3306
```

---

## Installation

Clone the repository:

```
git clone https://github.com/yourusername/school-api.git
cd school-api
```

Install dependencies:

```
npm install
```

Run the server:

```
node app.js
```

Server will start at:

```
http://localhost:5000
```

---

## API Endpoints

### 1️⃣ Add School

**Endpoint**

```
POST /addSchool
```

**Request Body**

```json
{
"name": "ABC School",
"address": "Bangalore",
"latitude": 12.9716,
"longitude": 77.5946
}
```

**Response**

```json
{
"message": "School added successfully"
}
```

---

### 2️⃣ List Schools by Distance

**Endpoint**

```
GET /listSchools?latitude=12.9&longitude=77.5
```

**Example Response**

```json
[
  {
    "id": 1,
    "name": "ABC School",
    "address": "Bangalore",
    "distance_km": 2.4
  }
]
```

Schools are returned **sorted by nearest distance**.

---

## Distance Calculation

The API uses the **Haversine Formula** to compute geographical distance between two latitude/longitude points.

This allows the API to return schools ordered by proximity to the user’s location.

---

## Testing with Postman

### Add School

```
POST http://localhost:5000/addSchool
```

Body → JSON

```
{
"name":"Test School",
"address":"Hyderabad",
"latitude":17.385,
"longitude":78.486
}
```

---

### List Schools

```
GET http://localhost:5000/listSchools?latitude=17.3&longitude=78.4
```

---

## Deployment

The API can be deployed using platforms such as:

* **Render**
* **Railway**
* **Cyclic**

Steps:

1. Push project to GitHub
2. Create a Web Service on Render
3. Set environment variables
4. Deploy using:

```
Build Command: npm install
Start Command: node app.js
```

---

## Example Live API

```
POST /addSchool
GET /listSchools
```

Example:

```
https://your-api-url.onrender.com/addSchool
https://your-api-url.onrender.com/listSchools?latitude=17.3&longitude=78.4
```

---

## Author

**Vakada Srinu**
Computer Science Engineering Student
Gudlavalleru Engineering College

---

## License

This project was created for **educational and internship assignment purposes**.
