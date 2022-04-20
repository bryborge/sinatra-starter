# Sinatra Starter

A Dockerized Sinatra web application MVC boilerplate.

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
    git clone git@github.com:sonofborge/sinatra-starter.git <my-project> && \
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

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
