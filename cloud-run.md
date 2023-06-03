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