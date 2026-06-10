## Infrastructure as Code (IaC) with Terraform for AWS Environments

## Overview of Project

**Scenario:**

A growing technology company manages its AWS infrastructure manually through the AWS Console. As the environment grows, this approach starts causing serious problems:
•	Infrastructure changes are undocumented
•	Environments drift over time
•	Reproducing setups across accounts is difficult
•	Rollbacks are risky and error-prone
•	Collaboration between engineers is inconsistent
The engineering team wants a reliable, repeatable, and version-controlled way to manage AWS infrastructure.


## My Role as the DevOps Engineer:

My Role was to design and build AWS infrastructure entirely using Terraform, following real-world DevOps best practices.
I was responsible for:
•	Writing Terraform code to provision AWS resources
•	Managing infrastructure state safely using a remote backend
•	Building infrastructure incrementally instead of all at once
•	Refactoring Terraform code into reusable modules
•	Understanding how Terraform tracks, plans, and applies changes


## Solution:

I used Terraform to provision and manage AWS infrastructure from scratch.
The solution includes:
•	A Terraform project structured for real environments
•	A remote backend using Amazon S3 and DynamoDB for state and locking
•	Core AWS infrastructure built step by step
•	Refactored Terraform code using modules for reusability
•	Safe change management using terraform plan and terraform apply


## About the Project:
In this hands-on project, I learnt how to manage AWS infrastructure using code, not the console.
I understood:
•	How Terraform interacts with AWS APIs
•	How Terraform state works and why remote state is critical
•	How dependencies are resolved automatically
•	How to safely modify infrastructure without accidental deletion
•	How modular Terraform code is structured in real teams
By the end of this project, I was able to read, write, and reason about Terraform code with confidence.



## Steps To Be Performed: 

I completed the project in the following stages:
1.	Understand and configure Terraform locally
2.	Configured a remote backend using S3 and DynamoDB
3.	Build AWS infrastructure incrementally using Terraform
4.	Review and apply changes safely using terraform plan
5.	Refactored infrastructure into Terraform modules
Each step focuses on why Terraform behaves the way it does, not just running commands.



## Services Used:

•	Terraform - Infrastructure as Code tool
•	Amazon S3 - Store Terraform remote state
•	Amazon DynamoDB - State locking and consistency
•	Amazon VPC - Networking foundation
•	Amazon EC2 - Compute resources
•	Security Groups - Network access control
•	AWS IAM - Permissions for Terraform operations



Architectural Diagram:

<img width="940" height="487" alt="image" src="https://github.com/user-attachments/assets/a71e7e46-b4e1-4b24-a8b3-258430d7eada" />



## Final Result:

<img width="940" height="387" alt="image" src="https://github.com/user-attachments/assets/d5bc2cbd-6862-4c47-91ed-323d76d2be4e" />


