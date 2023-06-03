## AIM & Admin

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