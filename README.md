[mvpdiagram.drawio](https://github.com/user-attachments/files/24177089/mvpdiagram.drawio)# aws-productlist-microservice-mvp



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


[Uploading mvpdiagram<mxfile host="Electron" agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) draw.io/28.2.8 Chrome/140.0.7339.240 Electron/38.4.0 Safari/537.36" version="28.2.8">
  <diagram name="Page-1" id="AhT5FNA3pM0XqV1BdnC-">
    <mxGraphModel dx="976" dy="752" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" background="#ffffff" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-25" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#000000;" edge="1" parent="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="424" y="94" as="sourcePoint" />
            <mxPoint x="424" y="234" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-1" value="" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.internet_2;fillColor=#D2D3D3;gradientColor=none;" vertex="1" parent="1">
          <mxGeometry x="380.25" y="10" width="79.5" height="54" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-2" value="AWS Cloud" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_aws_cloud_alt;strokeColor=#232F3E;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#232F3E;dashed=0;" vertex="1" parent="1">
          <mxGeometry x="20" y="140" width="800" height="560" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-3" value="Region" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_region;strokeColor=#00A4A6;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=1;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-2">
          <mxGeometry x="40" y="20" width="730" height="520" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-41" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="jX_O0EEJLkLnmiIxOcZO-3" source="jX_O0EEJLkLnmiIxOcZO-38" target="jX_O0EEJLkLnmiIxOcZO-40">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-38" value="" style="editableCssRules=.*;html=1;shape=image;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;aspect=fixed;imageAspect=0;image=data:image/svg+xml,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnY9Imh0dHBzOi8vdmVjdGEuaW8vbmFubyIgd2lkdGg9IjE2LjQyMDAwMDA3NjI5Mzk0NSIgaGVpZ2h0PSIyMC4wNDk5OTkyMzcwNjA1NDciIGZpbGwtcnVsZT0iZXZlbm9kZCIgdmlld0JveD0iMCAwIDE2LjQyMDAwMDA3NjI5Mzk0NSAyMC4wNDk5OTkyMzcwNjA1NDciPiYjeGE7CTxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+JiN4YTsJLnN0MHtmaWxsOiM0Mjg1ZjQ7fSYjeGE7CS5zdDF7ZmlsbDojNjY5ZGY2O30mI3hhOwk8L3N0eWxlPiYjeGE7CTxwYXRoIGNsYXNzPSJzdDEiIGQ9Ik04LjIxIDBMMCAzLjQydjUuNjNjMCA1LjA2IDMuNSA5LjggOC4yMSAxMSA0LjcxLTEuMTUgOC4yMS01Ljg5IDguMjEtMTAuOTVWMy40MnptMCAzLjc5YTIuNjMgMi42MyAwIDAgMSAxLjAwNSA1LjA2QTIuNjMgMi42MyAwIDAgMSA2LjM1IDQuNTZhMi42MyAyLjYzIDAgMCAxIDEuODYtLjc3em00LjExIDExLjE1YTguNjQgOC42NCAwIDAgMS00LjExIDIuOTMgOC42NCA4LjY0IDAgMCAxLTQuMTEtMi45M3YtMi4yNWMwLTEuNjcgMi43NC0yLjUyIDQuMTEtMi41MnM0LjExLjg1IDQuMTEgMi41MnoiLz4mI3hhOwk8cGF0aCBjbGFzcz0ic3QwIiBkPSJNOC4yMSAwdjMuNzlhMi42MyAyLjYzIDAgMSAxIDAgNS4yNnYxLjEyYzEuMzcgMCA0LjExLjg1IDQuMTEgMi41MnYyLjI1YTguNjQgOC42NCAwIDAgMS00LjExIDIuOTNWMjBjNC43MS0xLjE1IDguMjEtNS44OSA4LjIxLTEwLjk1VjMuNDJ6Ii8+JiN4YTs8L3N2Zz4=;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-3">
          <mxGeometry x="23.62" y="70" width="40" height="50" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-8" value="VPC" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_vpc2;strokeColor=#8C4FFF;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#AAB7B8;dashed=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-3">
          <mxGeometry x="90" y="40" width="580" height="430" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-23" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#7AA116;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.bucket;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-8">
          <mxGeometry x="380" y="256" width="75" height="78" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-24" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;b&gt;Product Images / Assets&lt;/b&gt;&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-8">
          <mxGeometry x="362.5" y="340" width="110" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-39" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;b&gt;IAM&lt;/b&gt;&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-3">
          <mxGeometry x="10" y="120" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-40" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#E7157B;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.cloudwatch_logs;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-3">
          <mxGeometry x="10" y="160" width="67.24" height="50" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-43" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;Cloudwatch&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;fontStyle=1" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-3">
          <mxGeometry x="13.620000000000005" y="220" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-10" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-9" target="jX_O0EEJLkLnmiIxOcZO-8">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="210" y="300" />
              <mxPoint x="210" y="370" />
              <mxPoint x="480" y="370" />
              <mxPoint x="480" y="180" />
              <mxPoint x="410" y="180" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-11" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=0;exitDx=0;exitDy=0;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-16" target="jX_O0EEJLkLnmiIxOcZO-8">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-18" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0;exitY=0;exitDx=0;exitDy=0;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-9" target="jX_O0EEJLkLnmiIxOcZO-8">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-31" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#000000;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-9">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="270" y="420" as="targetPoint" />
            <Array as="points">
              <mxPoint x="345" y="395" />
              <mxPoint x="270" y="395" />
              <mxPoint x="270" y="420" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-9" value="Public subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#7AA116;fillColor=#F2F6E8;verticalAlign=top;align=left;spacingLeft=30;fontColor=#248814;dashed=0;" vertex="1" parent="1">
          <mxGeometry x="280" y="240" width="330" height="120" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-14" value="" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-9">
          <mxGeometry x="80" y="30" width="60" height="60" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-15" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;Webserver &lt;b&gt;EC2&lt;/b&gt;&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-9">
          <mxGeometry x="80" y="90" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-16" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;Product &lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;catalog&lt;/font&gt; API&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-9">
          <mxGeometry x="190" y="45" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-17" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=0;exitDx=0;exitDy=0;" edge="1" parent="jX_O0EEJLkLnmiIxOcZO-9" source="jX_O0EEJLkLnmiIxOcZO-9" target="jX_O0EEJLkLnmiIxOcZO-16">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="130" y="-10" as="sourcePoint" />
            <mxPoint x="160" y="-40" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-12" value="Private subnet" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#00A4A6;fillColor=#E6F6F7;verticalAlign=top;align=left;spacingLeft=30;fontColor=#147EBA;dashed=0;rotation=0;" vertex="1" parent="1">
          <mxGeometry x="180.09" y="420" width="160" height="150" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-20" value="" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.rds;fillColor=#2E73B8;gradientColor=none;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-12">
          <mxGeometry x="9.909999999999997" y="49" width="72" height="81" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-21" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;b&gt;Product Database&lt;/b&gt; RDS&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-12">
          <mxGeometry x="40" y="120" width="120" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-22" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;Security Group&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="jX_O0EEJLkLnmiIxOcZO-12">
          <mxGeometry x="19.91" y="30" width="99.91" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-33" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#000000;exitX=0.5;exitY=1;exitDx=0;exitDy=0;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-9" target="jX_O0EEJLkLnmiIxOcZO-23">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="350" y="380" as="sourcePoint" />
            <mxPoint x="350" y="400" as="targetPoint" />
            <Array as="points">
              <mxPoint x="350" y="370" />
              <mxPoint x="350" y="400" />
              <mxPoint x="538" y="400" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-34" value="Text" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="340" y="380" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-42" value="Text" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="470" y="450" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-44" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;fontColor=default;strokeColor=#000000;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-38" target="jX_O0EEJLkLnmiIxOcZO-14">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-45" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#000000;entryX=0;entryY=0.75;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="1" source="jX_O0EEJLkLnmiIxOcZO-40" target="jX_O0EEJLkLnmiIxOcZO-14">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="250" y="310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="jX_O0EEJLkLnmiIxOcZO-46" value="&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;I&lt;font style=&quot;color: rgb(0, 0, 0);&quot;&gt;nternet&lt;/font&gt;&lt;/font&gt;" style="text;html=1;whiteSpace=wrap;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="390" y="64" width="60" height="30" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
.drawio…]()





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

## Final Summary

This project demonstrates how to design a realistic AWS Product Catalog microservice using Terraform modules, focusing on architecture, security, and best practices—without deploying anything.

Least privilege IAM: EC2 only accesses required S3 bucket

Security Groups: Restrict traffic between layers

S3 Public Access Block: Prevents accidental public exposure
