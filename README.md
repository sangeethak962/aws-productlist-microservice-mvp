# aws-productlist-microservice-mvp



## Project Title

Product Catalog Microservice – Terraform MVP (AWS)

## Project Objective

This project models a small, realistic AWS infrastructure using Terraform modules, without actually deploying any resources.

The goal is to:

Practice Terraform module design

Understand AWS architecture concepts

Follow infrastructure best practices

## What This Project Represents

A Product Catalog Microservice that:

Runs application code on an EC2 instance

Stores product data in an RDS database

Stores product images/files in an S3 bucket
Uses a VPC for secure networking

Everything is written as Terraform code, but not applied to AWS.
Architecture Overview


VPC → private network

Public subnet → EC2 application server

Private subnet → RDS database

S3 bucket → product images and files

## Best Practices Used

Modular Terraform design

Input variables for customization

Outputs for module communication

Least-privilege IAM design (conceptual)

Secure networking (private database)

##Architecture Diagram


##Terraform Module Structure
<img width="323" height="498" alt="Screenshot 2025-12-15 at 21 51 33" src="https://github.com/user-attachments/assets/117bc59f-7734-438a-a58a-8fd7fd2c3ead" />

