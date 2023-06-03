## IAM & Admin

### setup iam for colaborations and security
```
    - clik grant access under VIEW BY PRINCIPALS 
    - fill in new principals your patner account or your another account
        - role  -Basic => owner
        - add another account 
        - role  -Source => Source Repository Reader
        - add another account 
        - role  -Storage => Storage Admin
        - save
    - klik service account
        - klik Create service account
        - fill in name <bucketaccees> 
        - fill in Service account ID <capstone-project-arahku>
        - create and continue
        - Grant this service account access to project
            - select role  -Storage => Storage Admin
        -done
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
