# Book Management Dashboard


## Features
- View a list of book reviews.
- Filter reviews by rating (1 to 5 stars).
- Search for reviews by book name.
- Edit existing reviews.
- Delete reviews.

## Login Details
- **Username**: Kumara
- **Password**: 123456

## Tech Stack
- **Frontend**: React, Axios, CSS
- **Backend**: Node.js, Express.js
- **Database**: MySQL

## Installation

### Prerequisites
- Node.js
- MySQL

### Steps
1. Clone the project repository.
2. Set up the database in MySQL and create a table for reviews.
3. Update the database configuration in the backend.
4. Install dependencies for both backend and frontend:
   - Backend: `npm install` (in the backend folder)
   - Frontend: `npm install` (in the frontend folder)
5. Start the backend server: `npm start` (in the backend folder).
6. Start the frontend application: `npm start` (in the frontend folder).

## Running the App
1. Open the app in your browser at `http://localhost:3000`.
2. Login using the provided credentials.
3. Explore the features to view, filter, search, edit, and delete reviews.

## Folder Structure
```
project-folder
├── backend
│   ├── config
│   │   └── db.js
│   ├── routes
│   │   └── reviews.js
│   ├── models
│   │   └── Review.js
│   └── server.js
├── frontend
│   ├── public
│   │   └── index.html
│   ├── src
│   │   ├── components
│   │   │   ├── ReviewList.js
│   │   │   ├── ReviewFilter.js
│   │   │   └── ReviewSearch.js
│   │   ├── App.js
│   │   └── index.js
├── README.md
```

## License
This project is licensed under the MIT License.
