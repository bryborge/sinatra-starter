# Sinatra MVC

The primary function of this project is yet to be determined.

Tangentially,
this project showcases the project structure I use when creating applications using the
[Sinatra](http://sinatrarb.com/)
framework and the [Model, View, Controller (MVC)](https://en.wikipedia.org/wiki/Model-view-controller)
design pattern.

## Build Status

Coming Soon ...

## Getting Started

These instructions will get a copy of this project up and running on your local machine for development and testing
purposes.

See deployment for notes on how to deploy the project on a live system.

### Prerequisites

1.  [Docker](https://docs.docker.com/get-started/) - Build, run, and share applications with containers.
1.  [Docker Compose](https://docs.docker.com/compose/) - Docker's multi-container management.
1.  [Git](https://git-scm.com/) - An open source distributed version control system.

While the following isn't required to run the project,
they may be useful for development purposes.

1.  [Bundler](https://bundler.io/) - A Dependency manager for Ruby applications.
1.  [Ruby](https://www.ruby-lang.org/) - A dynamic open source programming language with a focus on simplicity and
    productivity.
1.  [RubyGems](https://rubygems.org/) - A package manager for the Ruby programming language.

### Installation

1.  Clone this repo down to your machine.

    ```sh
    git clone https://github.com/sonofborge/sinatra-mvc.git
    ```
    
    Conversely,
    if you have configured connecting to
    [Github with SSH](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh),
    you can run the following:
    
    ```sh
    git@github.com:sonofborge/sinatra-mvc.git
    ```

1.  Create `database.yml` file.

    ```sh
    cp src/config/database.yml{.dist,}
    ```
    
    This is where your database connection for the application is configured.
    By default,
    it's configured to connect to the database running in the `db` container.

1.  Create `.env` file.

    ```sh
    cp .env{.dist,}
    ```

    This is where the environment variables that Docker Compose uses are defined.

1.  Initialize and run the application in container.

    ```sh
    docker-compose up -d
    ```
    
1.  Navigate to `localhost:3000` in a browser.

    You should see `Hello, World!` on a basic html page.

#### Migrations

At this time,
there are no migrations or anything to run to prepare the database.

#### ActiveRecord console

One of the niceties in Ruby on Rails is that you can hop into an ActiveRecord console and poke around at how the data
hangs together.

The `console` rake task will replicate this behavior.

Example:

```sh
docker exec -it sinatra-mvc_app_1 bundle exec rake console
```

## Running Tests

Since the application and database run in containers,
you need to specify the command you want to run
(in this case `bundle exec rspec`)
in the app container.

Example:

```sh
docker exec -it sinatra-mvc_app_1 bundle exec rspec
```

### End-to-end Tests

Coming Soon ...

### Code Style Tests

As with running tests,
you need to specify the command you want to run
(in this case `bundle exec rubocop`)
in the app container.

Example:

```sh
docker exec -it sinatra-mvc_app_1 bundle exec rubocop
```

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
