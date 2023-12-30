# C Application Compilation Project with Docker
This project demonstrates how to compile a C application using Docker, employing both a single-stage Dockerfile and a multi-stage Dockerfile. The project contains the following files and directories:

```bash
.
├── app
│   └── main.c
├── build
│   ├── Build.Dockerfile
│   └── Dockerfile
└── docker-compose.yaml
```

## File Contents:
- *app/main.c*: This file contains the source code of the application written in C.

- *build/Dockerfile*: This Dockerfile implements a single-stage compilation of the C application. It uses a base image and compiles the source code within it.

- *build/Build.Dockerfile*: This Dockerfile implements a multi-stage compilation of the C application. It uses multiple stages to optimize the compilation process and generate a lighter final image.

- *docker-compose.yaml*: This file contains the configuration for Docker Compose, which can be used to orchestrate the compilation and execution of the application.

## Explanation of Dockerfile Usage:
1. Single-Stage Dockerfile:
- *Advantages*: It's simpler and faster to implement. It creates a larger image as it includes both the build tools and the application itself in the same stage.
- *Execution*: The Dockerfile in _build/Dockerfile_ can be executed using:
``` bash
docker build -t image_name -f build/Dockerfile .
```

2. Multi-Stage Dockerfile:
- *Advantages*: Optimizes the final image size by excluding build tools from the final version of the image.
- *Execution*: The Dockerfile in build/Build.Dockerfile can be executed using:
```bash
docker build -t image_name -f build/Build.Dockerfile .
```
You can use `docker-compose.yaml` to run or orchestrate the compilation of the C application based on specific project needs.