### Docker Volumes

Volumes will set up a reference to file outside the contianers, maintaining the code inside the container updated with
the source code of our project, outside the container

`-v$(pwd):[internal_folder]` -> mount the external content of the Present Working Directory into internal_folder path

If you avoid putting semicolon you specify that you don't want to map the directory or the file with the outside container.
That could be the case of a node_modules folder that exists only inside the container.

`-v /app/node_modules`

example of command -> `sudo docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app <container_id>`

## docker-compose volumes versions:

```
    volumes:
      - /app/node_modules       // bookmark of the folder
      - .:/app                  // reference . into /app
```
