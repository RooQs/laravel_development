# Laravel Development with Docker

This repository contains a Docker setup for Laravel development with automated CI/CD pipeline.

## Project Structure

- `Dockerfile`: Docker configuration for building the Laravel application
- `docker-compose.yml`: Docker Compose configuration for local development environment
- `.github/workflows/docker-build.yml`: GitHub Actions workflow for automated Docker builds
- `.gitignore`: Git ignore configuration for Laravel projects

## Local Development

### Prerequisites

- Docker
- Docker Compose

### Setup

1. Clone this repository
2. Create your Laravel application in the root directory
3. Run the following command to start the development environment:

```bash
docker-compose up -d
```

4. Access your application at http://localhost:8000

## CI/CD Pipeline

The project includes a GitHub Actions workflow that automatically builds and pushes Docker images to Docker Hub whenever code is pushed to the main/master branch.

### Setup

1. Fork this repository
2. Add the following secrets to your GitHub repository:
   - `DOCKER_HUB_USERNAME`: Your Docker Hub username
   - `DOCKER_HUB_TOKEN`: Your Docker Hub access token
3. Update the `tags` field in `.github/workflows/docker-build.yml` with your Docker Hub username

## License

MIT