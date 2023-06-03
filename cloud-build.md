## Setup cloud build

### Setup cloud build for captone project staging
```
    - klik repositories
        - klik connect repositories
        - region <global>
        - choose GitHub (Cloud Build GitHub App)
        - continue
        - please wait and install google cloud build
        - select your github account 
            - you can choose all repo or onle select repo 
            - install
            - select repo
            - klik check
            - connet
            - done
    - klik triggers 
        - create trigger 
        - fill in name staging
        - Event choose Push to a branch
        - select repo <zulfahmidev/capstone_api (GitHub App)>
        - select Branch <staging>
        - Configuration choose Cloud Build configuration file (yaml or json)
        - Location
            - Repository
            - Cloud Build configuration file location
                - cloudbuild.yaml
        - add variable
            - _VM_LABEL_KEY  => server
            - _VM_LABEL_VALUE  => arahku
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
