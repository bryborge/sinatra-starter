# To Do Tracker (Ruby Edition)

The primary function of this project is to allow an authenticated user to track their To Do list and items in one
convenient place.

Tangentially,
this project showcases the project structure I use when creating applications using the
[Sinatra](http://sinatrarb.com/)
framework and the [Model, View, Controller (MVC)](https://en.wikipedia.org/wiki/Model-view-controller)
design pattern.

## Build Status

Coming Soon ...

## Code Style

Coming Soon ...

## Getting Started

These instructions will get a copy of this project up and running on your local machine for development and testing
purposes.

See deployment for notes on how to deploy the project on a live system.

### Prerequisites

1.  [Bundler](https://bundler.io/) - A Dependency manager for Ruby applications
1.  [Git](https://git-scm.com/) - An open source distributed version control system 
1.  [Postgresql](https://www.postgresql.org/) - An open source object-relational database system
1.  [Ruby](https://www.ruby-lang.org/) - A dynamic open source programming language with a focus on simplicity and
    productivity
1.  [RubyGems](https://rubygems.org/) - A package manager for the Ruby programming language

### Installation

1.  Clone this repo down to your machine.

1.  Install application dependencies.

    ```sh
    bundle install
    ```

1.  Create `database.yml` file.

    ```sh
    cp config/database.yml{.dist,}
    ```

1.  Setup Postgres by logging in as the postgres user and creating the role for this project.

    ```sh
    su - postgres
    create role todo with createdb login password 'todo';
    ```

1.  Create the database.

    ```sh
    bundle exec rake db:create
    ```

1.  Run the application and navigate in your browser to `localhost:9393`.

    ```sh
    bundle exec shotgun
    ```

## Running Tests

Coming Soon ...

### End-to-end Tests

Coming Soon ...

### Code Style Tests

Coming Soon ...

## Deployment

Coming Soon ...

## Built With

*   [Sinatra](http://sinatrarb.com/) - A [DSL](https://en.wikipedia.org/wiki/Domain-specific_language) for quickly
    creating web applications in Ruby

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct,
and the process for submitting pull requests to us.

## Versioning

We use [SemVer](https://semver.org/) for versioning.
For the versions available,
see the
[tags on this repository](https://github.com/sonofborge/ruby_to-do-tracker/tags).

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Authors

*   Bryan Borgeson - _Initial work_ - [sonofborge](https://github.com/sonofborge)
