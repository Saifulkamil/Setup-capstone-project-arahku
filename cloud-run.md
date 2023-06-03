## Setup cloud run

### Setup cloud run for capstone project
```
    - create service
    - Deploy one revision from an existing container image
        - select image docker from artefect regitry
    - Service name <capstone>
    - Region => asia-southeast2 (Jakarta)
    - Autoscaling
        - Autoscaling
            - Minimum number of instances => 1
            - Maximum number of instances => 3
    - Authentication
        - chek Allow unauthenticated invocations
    -klik Container, Networking, Security
        - container
            - Container port => 5000
        - networking
            - VPC Network
                - vpc-restful-api: Serverless VPC Access Connector "stagig" (in this project)
                - chek Route only requests to private IPs through the VPC connector
    - create

```

## list of content

- cloud run
  - [cloud-run](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/cloud-run.md)

- Compute-engine
  - [Compute-engine](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/Compute-engine.md)

- cloud SQL 
  - [cloud-SQL](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/Cloud-SQL.md)

- cloud build 
  - [cloudbuild](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/cloud-build.md)

- cloud artefact registry
  - [cloud-artefact-registry](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/artefact-registry.md)

- IAM & Admin
  - [IAM-&-Admin](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/Aim%20&%20Admin.md)

- VPC Network
  - [VPC-Network](https://github.com/sepol-sys/Setup-capstone-project-arahku/blob/main/Vpc-network.md)
