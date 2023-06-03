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