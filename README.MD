# DevSecOps Projects Over 

## Introduction 

This DevsecOps project incorporates Static Application Security Testing (SAST), Software Composition Analysis (SCA), and Infrastructure as code (Iac) scanning best practices on applications running within AWS infrastructure, utilizing GitHub Actions with work lows.  

## Components

### 1. Infrastructure as Code (Iac) Scanning

IaC scanning ensures that the infrastructure configuration code adherers to security best practices and compliance standards. It helps identify misconfigurations and security concerns in cloud infrastructure. 

**Tools**
- **Terraform Compliance:** Assesses Terraform scripts against security policies defines using BDD-style language to ensure compliance.
- **Trivy:** Provides automated Iac Scanning to identify Security misconfigurations in a cloud environment. 
 
 **Outcome** 
 
 Outcome of the Trivy scan resulted in 6 High and 1 Medium vulnerabilities in the current AWS infrastructure. 

 ## 2. Static Application Security Testing (SAST)
SAST involves analyzing the application's source code without exploitation. This is done to identify vulnerabilities, coding errors, and other issues in the code base. 

**Tools**
- **CodeQL:** Provides static code analysis to identify buds, vulnerabilities, and other coding issues in various coding languages. 

**Outcome**

The scan resulted in 4 results, that have been forwarded to the security overview tab in Github for ease of use for the developers. 

## 3. Software Composition Analysis(SCA)
SCA focuses on identifying and managing open-source components and third-party libraries used int software development.

**Tools** 

- **Trivy:** Provides automatic scans of Containers, file systems, and other open source dependencies. 

**Outcome**

- In this project SCA was used to scan a Docker image of Wordpress with the result being no vulnerabilities found. 