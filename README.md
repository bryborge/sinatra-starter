# Sinatra Starter

A Dockerized Sinatra web application MVC boilerplate.

## Built With

*   [Sinatra](http://sinatrarb.com/) - A [DSL](https://en.wikipedia.org/wiki/Domain-specific_language) for quickly
    creating web applications in Ruby


## Getting Started

These instructions will walk you through the process of setting up this project on a development machine.

### Prerequisites

*   Docker
*   Docker Compose
*   Git

### Installation

1.  Clone the project (replacing `<my-project>` with the desired project name), delete `.git` directory, and
    reinitialize git.

    ```shell
    git clone --depth=1 git@github.com:sonofborge/sinatra-starter.git <my-project> && \
    cd $_ && \
    rm -rf .git && \
    git init
    ```

2.  Create the `database.yml` file.

    ```shell
    cp config/database.yml{.dist,}
    ```

3.  Create a `.env` file and set the `PROJECT_NAME` variable to the name of the project root directory.

    ```shell
    cp .env{.dist,} && \
    echo "PROJECT_NAME=${PWD##*/}" >> .env
    ```

4.  We're now ready to spin it all up.

    ```shell
    docker-compose up -d
    ```

5.  In a browser, navigate to `localhost:<PORT>`, where `<PORT>` is the port number specified in your `.env` file.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull
requests to us.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Authors

*   Bryan Borgeson - _Initial work_ - [sonofborge](https://github.com/sonofborge)
