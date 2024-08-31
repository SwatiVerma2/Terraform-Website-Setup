Here's a README file for your GitHub repository based on the provided project details:

---

# Instant Website Setup with Terraform

## Project Overview

**Instant Website Setup with Terraform** is a Realtime DevOps project designed to automate the deployment of a static website using Terraform and AWS Cloud. This project enables the setup of static website hosting with a fully automated process in just 3 seconds.

This Terraform project is ideal for beginners who want to learn how to use Terraform with AWS and understand how to create a one-click automated solution in DevOps.

## Features

- **Automated Deployment:** Set up static website hosting on AWS S3 with Terraform, achieving a fully automated deployment in just seconds.
- **Beginner-Friendly:** Provides a hands-on experience with Terraform and AWS, offering a simple solution to get started with Infrastructure as Code (IaC).
- **Cloud Integration:** Utilizes AWS S3 for storage and static website hosting, demonstrating practical cloud infrastructure management.

## Files Included

- **`main.tf`**: Contains Terraform resources to create an S3 bucket, configure bucket ownership, access controls, upload objects, and set up website configuration.
- **`output.tf`**: Outputs the website endpoint for accessing the static site.
- **`provider.tf`**: Configures the AWS provider for Terraform.
- **`variables.tf`**: Defines the variables used in the Terraform configuration, including the bucket name.

## Terraform Configuration

### `main.tf`

This file includes Terraform resources for:

- Creating an S3 bucket for static website hosting.
- Configuring ownership controls and public access blocks.
- Setting access control lists (ACL) for public read access.
- Uploading `index.html`, `error.html`, and `profile.jpeg` to the S3 bucket.
- Configuring the S3 bucket for website hosting with `index.html` as the default document and `error.html` as the error document.

### `output.tf`

Outputs the S3 bucket's website endpoint, which provides the URL to access the static website.

### `provider.tf`

Configures the AWS provider, specifying the AWS region.

### `variables.tf`

Defines the `bucket_name` variable used in the configuration.

## Getting Started

1. **Install Terraform**: Download and install Terraform from [terraform.io](https://www.terraform.io/downloads).

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/SwatiVerma2/Terraform-Website-Setup.git
   cd Terraform-Website-Setup
   ```

3. **Configure AWS Credentials**: Ensure that your AWS credentials are set up properly in your environment. You can configure them using `aws configure` or by setting environment variables.

4. **Initialize Terraform**:
   ```bash
   terraform init
   ```

5. **Plan the Deployment**:
   ```bash
   terraform plan
   ```

6. **Apply the Configuration**:
   ```bash
   terraform apply
   ```

   Confirm the action when prompted to create the resources.

7. **Access Your Website**: Once the deployment is complete, you can access your static website using the endpoint output by Terraform.


## Acknowledgments

- Thanks to [Terraform](https://www.terraform.io/) and [AWS](https://aws.amazon.com/) for providing the tools and services used in this project.

---

Static Website

![image](https://github.com/user-attachments/assets/ac23806a-603d-481d-a561-cb08029cd1e1)

