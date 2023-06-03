## compute Engine

### setup vm instace for staging
```
    - clik create instance 
        - fill in name <instance-for-staging>
        - add label key=<server>, value=<arahku>
        - choose region <asia-southeast2(jakarta)>, zona<asia-southeast2-a>
        - choose type mechine  <N1>, <f1-micro>
        - choose boot disk ubuntu, < Ubuntu 22.04 LTS> 
        - service account <bucketaccess>
        - klik advanced options
        - klik netwotk 
            - fill in tag <vpc-staging>, <ssh>, <internal>, <ssh-internal>
            - choose network interfaces <vpc-staging> 
            - choose subnet  <subnet-jakarta-staging>
            - done
        - klik Management
            - fill in Automation
                sudo su - cloudbuild <<EOF
                if [ -d "capstone_api" ]; then
                    echo "direckori capstone_api ada ................................"
                    cd capstone_api
                    git pull origin main
                    sudo flask db upgrade
                else
                    echo "direckori capstone_api belum ada ................................"
                    echo "mendownlaod scripts install ................................"
                    gsutil cp gs://private-capstone/scripts-startup/install_staging.sh .
                    sudo chmod +x install_staging.sh
                    ./install_staging.sh
                fi
                EOF
        - create
```
### OR you can use google cloud sheel and paste this comment
```
gcloud compute instances create instance-for-staging \
    --project=capstone-project-arahku \
    --zone=asia-southeast2-a \
    --machine-type=f1-micro \
    --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=subnet-jakarta \
    --maintenance-policy=MIGRATE \
    --provisioning-model=STANDARD \
    --service-account=bucketacces@capstone-project-arahku.iam.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/cloud-platform \
    --tags=vpc-capstone,ssh,ssh-internal,internal \
    --create-disk=auto-delete=yes,boot=yes,device-name=instance-for-staging,image=projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20230531,mode=rw,size=10,type=projects/capstone-project-arahku/zones/asia-southeast2-a/diskTypes/pd-balanced \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --labels=server=arahku,goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any
```