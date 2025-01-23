# Patient Management System

This is a Rails application that allows users to manage their patients, including creating, updating, deleting, and viewing patient records. It supports user authentication, ensuring that each user can only view and manage their own patients.

## Features
- User authentication with Devise
- CRUD operations for patients
- Search patients by name or email
- Pagination for listing patients
- Simple UI for managing patient records

## Technologies Used
- Ruby on Rails 7.x
- PostgreSQL (or your preferred database)
- Devise for user authentication
- RSpec for testing

## Setup

### Prerequisites
- Ruby 3.0.0
- Rails 7.x
- PostgreSQL (or any preferred database)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/shahnawaz-ror/PatientManagementApp.git
   cd PatientManagementApp
```
2. Install dependencies:

```
bundle install
```
3. Set up the database:
```
rails db:create
rails db:migrate
rails db:seed # (Optional) Seed the database with some initial data
```
4.Start the Rails server:
```
rails s
```
4. First Sign up User

5. Then Login user

6. For rspec 
```
rspec
```