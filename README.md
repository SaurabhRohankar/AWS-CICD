# AWS CI/CD Pipeline for Python Flask Application

## Overview

This project showcases an end-to-end Continuous Integration/Continuous Deployment (CI/CD) pipeline on Amazon Web Services (AWS) for a Python Flask application. The pipeline automatically builds and deploys the application to a Docker container, pushing it to Docker Hub and then deploying it using AWS CodeDeploy. 

## Project Components

- **Code Repository**: The project code is hosted on GitHub, and the pipeline is triggered whenever changes are pushed to the `master` branch.

- **AWS CodeBuild**: AWS CodeBuild is used to build the Python Flask application. The build process includes dependency installation, Docker image creation, and pushing the image to Docker Hub.

- **AWS Systems Manager Parameter Store**: Docker registry credentials (username and password) are securely stored in AWS Systems Manager Parameter Store to ensure secure access during the Docker login process.

- **AWS CodeDeploy**: Application deployment and updates are managed by AWS CodeDeploy, using an `appspec.yml` file that specifies application stop and start procedures.

## Getting Started

1. **Clone the Repository**: Clone this GitHub repository to your local development environment.

2. **Prerequisites**:
   - Ensure you have the AWS CLI and AWS CodeBuild configured with appropriate permissions.
   - Install Docker on your local machine for testing and building Docker images.

3. **Set Up Docker Credentials**:
   - Configure AWS Systems Manager Parameter Store with your Docker registry credentials.
   - Update the `buildspec.yml` file with the appropriate references to these credentials.

4. **Deploy the Pipeline**:
   - Configure AWS CodeBuild to use the `buildspec.yml` file for your build.
   - Configure AWS CodeDeploy to use the `appspec.yml` file for your deployment.

5. **Push Changes**:
   - Push changes to the `master` branch on GitHub to trigger the CI/CD pipeline.
   - The pipeline will automatically build a Docker image, push it to Docker Hub, and deploy the application.

## Contributing

If you'd like to contribute to this project, please fork the repository and create a pull request. We welcome contributions and suggestions!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to AWS for providing the tools and services necessary for building and deploying applications with ease.
- The Python Flask community for the Flask web framework used in this project.
