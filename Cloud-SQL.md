## Setup cloud sql

### Setup cloud sql for capstone project
```
    - create instane
    - choose mysql
    - fill in instance ID <capstone>
    - database version  <mysql 8.0>
    - Choose a configuration to start with  <Development>
    - region asia-southeast2 (Jakarta) => single zone
    - klik Customize your instance
        - Machine Type <share core, 1 vCPU, 0.614 GB>
            - Storage type => hdd
            - Storage capacity => 10GB
        - Connections
            - Instance IP assignment => Private IP
            - unchek publick ip
        - Data Protection
            - unchek Enable deletion protection
    - create instance

```