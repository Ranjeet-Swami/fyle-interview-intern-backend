# Running with Docker

## Build Image

- Build the Docker image using the following command:

    ```cmd
    docker build -t fyle-backend:latest .
    ```

## Create SQLite Database

- If an existing `DB.sqlite` exists, specify it in `docker-compose.yaml` as follows:

    ```yaml
    volumes:
        - C:\path\to\file.sqlite3:/home/app/fyle-backend/store.sqlite3:rw
    ```

- OR create an empty `DB.sqlite` using the following command:

    ```cmd
    echo. > store.sqlite3
    ```

## Run Container

- Use the Docker Compose command to run the container as follows:

    ```cmd
    docker-compose up -d
    ```

