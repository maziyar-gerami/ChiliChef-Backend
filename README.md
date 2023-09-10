# ChiliChef Backend

Welcome to the ChiliChef Backend repository! This backend system powers the Chili Chef Android app, a social media platform for food enthusiasts. The ChiliChef Backend is built using PHP and utilizes a MySQL database to manage user accounts, food data, and more.

## Table of Contents
- [Features](#features)
- [Getting Started](#getting-started)
- [Setting Up the Database](#setting-up-the-database)
- [API Documentation](#api-documentation)
- [Contributing](#contributing)
- [License](#license)

## Features

### Getting Started
To set up the ChiliChef Backend on your server, follow the steps in the [Getting Started](#getting-started) section.

### Setting Up the Database
Learn how to set up the MySQL database for ChiliChef Backend by referring to the [Setting Up the Database](#setting-up-the-database) section.

### API Documentation
For details on the API endpoints and how to use them, please refer to the [API Documentation](#api-documentation) section.

## Getting Started

1. **Clone the Repository:**
git clone https://github.com/yourusername/ChiliChef-Backend.git
cd ChiliChef-Backend


2. **Configuration:**
- Copy the `config.php` and configure your MySQL database connection details.
- Ensure that the necessary PHP extensions (e.g., PDO, JSON) are enabled on your server.

3. **Database Setup:**
- Create a MySQL database and import the `id1572888_foodapp (1).sql` file to set up the required tables.

4. **Run the Backend:**
- You can use a PHP development server or deploy this backend on your preferred hosting service.

## Setting Up the Database

1. Create a MySQL database named foodapp and a user with privileges to access it.
2. Import the database schema using the SQL dump file provided in the `database` folder: `id1572888_foodapp (1).sql`.

## API Documentation

You can find detailed documentation on the ChiliChef Backend API in the [API Documentation](API_DOCUMENTATION.md) file. This documentation includes information about available endpoints, request/response formats, and authentication.

## Contributing

We welcome contributions to the ChiliChef Backend! If you would like to contribute, please follow our [Contribution Guidelines](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this software as per the terms of the license.
