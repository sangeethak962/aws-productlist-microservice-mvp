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

## Architecture Diagram
[mvpdiagram.drawio](https://github.com/user-attachments/files/24177089/mvpdiagram.drawio)



<img width="836" height="714" alt="Screenshot 2025-12-17 at 11 02 01" src="https://github.com/user-attachments/assets/1b38df06-7b93-4e12-bad0-1c5276b58527" />




    
        
## Terraform Module Structure

Main Configuration: main.tf, variables.tf, outputs.tf

Modular Structure:

modules/vpc/ - Network infrastructure (using terraform-aws-modules/vpc/aws)

modules/ec2/ - Compute resources with security groups

modules/rds/ - Database resources with security groups

modules/s3/ - Storage resources with encryption and lifecycle policies

Features:
Comprehensive comments explaining each resource

Input variables for customization

Output values for easy access to resource information

Remote state management with S3 and DynamoDB



<img width="323" height="498" alt="Screenshot 2025-12-15 at 21 51 33" src="https://github.com/user-attachments/assets/117bc59f-7734-438a-a58a-8fd7fd2c3ead" />


## Module Responsibilities

#Network Module

Purpose:

Create a secure network foundation

Resources Modeled:

VPC

Public Subnet (for EC2)

Private Subnets (for RDS)

Security Groups

# Compute Module

Purpose:

Run the Product Catalog application

Resources Modeled:

EC2 Instance

Security Group

IAM Role 

# Database Module

Purpose:

Store structured product data

Resources Modeled:

RDS Instance

DB Subnet Group

Security Group rules
#Storage Module

Purpose:

Store product images and static assets

Resources Modeled:

S3 Bucket

Public Access Block

# Security Design 

Private database: RDS is not internet-accessible
Least privilege IAM: EC2 only accesses required S3 bucket

Security Groups: Restrict traffic between layers

S3 Public Access Block: Prevents accidental public exposure

## Final Summary

This project demonstrates how to design a realistic AWS Product Catalog microservice using Terraform modules, focusing on architecture, security, and best practices—without deploying anything.


