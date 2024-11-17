# Weekly Plans

Weekly Plans is a Ruby on Rails application for users to create, organize, and manage weekly plans. Each week can have multiple tasks, sub-tasks, notes, and goals. Users can also categorize their weekly plans and navigate through different weeks, while enjoying secure authentication with Devise.

## Table of Contents
- [Features](#features)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Models and Relationships](#models-and-relationships)
- [Technologies Used](#technologies-used)
- [Screenshots](#screenshots)
- [License](#license)

## Features
- **User Authentication**: Secure login, registration, and account management using the Devise gem.
- **Weekly Plans**: Users can create plans for each week with a start date and a specific category.
- **Tasks and Sub-Tasks**: Each plan includes tasks, sub-tasks, and notes.
- **Categorization**: Weekly plans are categorized as Urgent, Not Urgent, Important, or Not Important.
- **Navigation**: Users can easily navigate between weeks to view different plans.

## Setup Instructions

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/your-username/weekly-plans.git
    cd weekly-plans
    ```

2. **Install Dependencies**: Run the following command to install all required gems:

    ```bash
    bundle install
    ```

3. **Set Up the Database**: Create and migrate the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

4. **Seed the Database (Optional)**: Populate the database with initial data using Faker:

    ```bash
    rails db:seed
    ```

5. **Run the Rails Server**: Start the server to run the application locally:

    ```bash
    rails server
    ```

6. **Access the Application**: Open your web browser and go to [http://localhost:3000](http://localhost:3000) to view the application.

## Usage

1. **Sign Up / Login**:  
   Register a new account or log in using existing credentials.

2. **Create a Weekly Plan**:  
   Click on "New Plan" to create a weekly plan, specifying the week’s start date, category, tasks, and goals.

3. **Manage Tasks and Sub-Tasks**:  
   For each week, add tasks, sub-tasks (to-dos), and notes.

4. **Navigate Weeks**:  
   Use the navigation to move between different weeks and view previous plans.

## Models and Relationships

- **User**: The main user of the application, authenticated with Devise.
- **Week**: Represents a weekly plan. A Week has:
  - One goal
  - Many tasks
  - Many sub-tasks
  - Many notes
- **Task**: Each task belongs to a specific Week.
- **Category**: Each week is categorized as Urgent, Not Urgent, Important, or Not Important.

## Technologies Used

- **Ruby on Rails**: Backend framework.
- **Devise**: User authentication gem.
- **Bootstrap**: For responsive UI.
- **Faker**: To generate sample data for testing.
- **SQLite3**: Default development database.
- **Stimulus (optional)**: For adding interactive JavaScript components.


## License

This project is licensed under the MIT License.

