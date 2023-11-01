# Docker Versioning Project

This project demonstrates how to automate the versioning of Docker images based on code changes. It provides a structured development workflow for containerized applications.

## Table of Contents

- [Project Overview](#project-overview)
- [Directory Structure](#directory-structure)
- [Automating Versioning](#automating-versioning)
- [How to Build and Push Versioned Docker Images](#how-to-build-and-push-versioned-docker-images)
- [GitHub Actions Workflow](#github-actions-workflow)
- [Additional Notes](#additional-notes)

## Project Overview

In this project, we automate the versioning of Docker images for multiple services based on code changes. The version is derived from the Git commit hash, providing traceability and consistency between code and deployed images.

## Directory Structure

```plaintext
docker_versioning/
│
├── services/
│   ├── service1/
│   │   ├── Dockerfile
│   │   ├── ...
│   │
│   ├── service2/
│   │   ├── Dockerfile
│   │   ├── ...
│   │
│   └── ...
│
├── scripts/
│   ├── build_and_push_images.sh
│   ├── ...
│
├── .github/
│   ├── workflows/
│   │   └── main.yml
│
├── .gitignore
├── README.md
└── Dockerfile.template
```

- `docker_versioning/`: The main project directory.
- `services/`: Subdirectories for each service, each with a Dockerfile and other service-specific files.
- `scripts/`: Custom scripts used in the CI/CD process, including the script for building and pushing Docker images.
- `.github/`: GitHub Actions workflow configuration.
- `.gitignore`: Specifies files and directories to ignore in version control.
- `README.md`: The main project README.
- `Dockerfile.template`: A template for Dockerfiles that can be customized for each service.

## Automating Versioning

- We use the Git commit hash as the version for Docker images. Each image is tagged with the commit hash, providing traceability to specific code changes.

- The `Dockerfile.template` file is used as a base template for service Dockerfiles, allowing customization for each service's requirements.

## How to Build and Push Versioned Docker Images

1. Customize Dockerfiles: In the `Dockerfile.template`, configure the base image and any common settings. You can customize this file for each service to include service-specific details.

2. Run the Versioning Script: Execute the versioning script to build and push versioned Docker images to your private container registry. The script generates version tags based on the Git commit hash.

   ```bash
   ./scripts/build_and_push_images.sh
   ```

3. Verify Versioned Images: Verify that the Docker images are successfully pushed to the registry with versioned tags.

## GitHub Actions Workflow

A GitHub Actions workflow is configured to automate the versioned image building and pushing process. The workflow triggers on pushes to the `main` branch and includes the following steps:

- Checks out the repository.
- Builds and pushes Docker images with versioned tags based on the Git commit hash.
- Performs cleanup to remove unused Docker images and containers.

## Additional Notes

- Customize the `.gitignore` file to specify files and directories to ignore in version control, based on your project's requirements.

- Adapt the CI/CD pipeline configuration (`main.yml`) to match your specific CI/CD tool and container registry setup.

- Ensure that your Docker images are built and pushed to a secure and private container registry for production use.

- Provide additional project-specific information in your README as needed.

```

This README.md file provides a detailed overview of your "docker_versioning" project, its directory structure, and how to automate Docker image versioning based on code changes. You can further customize it to match your specific project and include any additional information you want to provide.