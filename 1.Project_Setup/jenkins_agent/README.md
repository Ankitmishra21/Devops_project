# Jenkins Agent Docker Container

This Docker container is designed to serve as a Jenkins agent capable of building Java applications. It comes pre-installed with Helm, AWS CLI, and Maven, making it a versatile and efficient environment for building and deploying Java applications within a Jenkins pipeline.

## Table of Contents

- [Directory Structure](#directory-structure)
- [Dockerfile](#dockerfile)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Directory Structure

```plaintext
jenkins_agent/
│
├── Dockerfile
├── helm/
│   └── helm.tar.gz
├── aws/
│   └── awscliv2.zip
│
└── README.md
```

- `jenkins_agent/`: The main directory for the Jenkins agent Docker container project.
- `Dockerfile`: The Dockerfile used to build the Jenkins agent container.
- `helm/`: A directory to store the Helm binary (`helm.tar.gz`).
- `aws/`: A directory to store the AWS CLI binary (`awscliv2.zip`).
- `README.md`: The documentation file you are currently reading.

## Dockerfile

The `Dockerfile` is the blueprint for building the Jenkins agent container. It includes the following features:

- Based on the official Jenkins JNLP Agent base image.
- Pre-installed tools:
  - AWS CLI
  - Helm
  - Maven

## Usage

To build and use the Jenkins agent container, follow these steps:

1. Clone this repository:

   ```bash
   git clone <repository-url>
   cd jenkins_agent
   ```

2. Download the AWS CLI and Helm binaries and place them in the `aws/` and `helm/` directories, respectively.

3. Build the Docker image:

   ```bash
   docker build -t jenkins-agent .
   ```

4. Run the Jenkins agent container:

   ```bash
   docker run -d jenkins-agent
   ```

Now you have a Jenkins agent container ready to be used in your Jenkins setup.

## Contributing

Feel free to contribute to this project by opening issues and pull requests. Your input is valuable, and together we can make this Jenkins agent container even better.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

This `README.md` file provides detailed information about the Jenkins agent container, including the directory structure, features of the Dockerfile, usage instructions, and information on contributing and the license. You can customize it further to match your specific project's needs.