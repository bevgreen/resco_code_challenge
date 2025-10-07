# RESCO Code Challenge

This repository serves as a template for our open position in Ruby on Rails Developer. This main README will contain the requirements for the code challenge.

The challenge requires two services (as shown in the folder structure), one for the visual portion, and the other for the backend / data portion. They need to interact with each other via requests. For the Frontend to present data that is stored in the Backend.

All services are **required** to use Ruby on Rails, and use a SQL-Like database to store the data (preferably PostgreSQL).

## The Frontend
The Frontend is the visual part of the challenge. This system should contain 2 pages:
- Items list page
- Item page

Feel free to use whatever you are confortable to buildout the pages, Tailwind, SCSS, CSS, Bootstrap.

## The Backend
The Backend is the data part of the challenge. This system will store the data needed for the Frontend to display the contents on the webpage. This system should contain:
- A model (table) named Item
  - With the properties:
    - Name
    - Description
    - Number
    - Status
      - Available
      - Decommissioned
      - Expired
    - Image (bonus)

- Have at least two endpoints, that should return the information from the model (Item)
  - GET /items
  - GET /items/:id

