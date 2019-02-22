# Muse Skills Project

Building a web application that will allow a user to find different jobs. The task is to design and implement everything from the data model to application’s UI.
* List jobs with their company, job title, location, and the first 100 characters of the job description
* Job listing should be filterable by company, level, location, and job category
* Clicking the job title to be able to see the full details of a specific position
* Search for a job by title only
* Ingest data at the command line or via a web page either from flat files or the API listed below

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You will need Ruby and the Rails framework installed.

```
$ ruby -v
ruby 2.3.3
```
```
$ rails -v
rails 5.1.6
```

This application uses Postgres, be sure you have your local account setup with a username and password.

### Installing

Clone the repository.
```
git clone https://github.com/dreamstarter/muse-skills-project.git
```

Install the applications gems.
```
$ bundle install
```
Setup the local database. 
```
$ rails db:setup
```
Run the database migrations to build the DB schema.
```
$ rails db:migrate
```
Start the application.
```
$ rails s
```
Browse to <localhost:3000> to view the application in a browser.

Click in the navigation link for the 'API' to pull and consume API Data.

## Running the tests

Migrate the test database.

```
$ rails db:migrate RAILS_ENV=test
```

Run the tests

```
$ rails test
```

## Built With

* [RubyonRails](https://https://guides.rubyonrails.org/) - The web framework used

## Authors

* **Bryan Anderson** - [Dreamstarter](https://github.com/dreamstarter)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
