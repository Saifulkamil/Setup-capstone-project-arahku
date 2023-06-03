### VPC Network

### Setup vpc network for staging
```
- fill in name vpc-staging
- choose Subnet creation mode <custom>
    - fill in edit subnet name <subnet-jakarta-staging> 
    - choose region asia-southeast2
    - ipv4
    - fill in ipv4 range (you can search range cidr in google) or you can fill ip up to you <10.184.0.0/20>
    - craete
```
### OR you can use google cloud sheel and paste this comment
```
        gcloud compute networks create vpc-staging --project=capstone-project-arahku --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional

        gcloud compute networks subnets create subnet-jakarta-staging --project=capstone-project-arahku --range=10.184.0.0/20 --stack-type=IPV4_ONLY --network=vpc-staging --region=asia-southeast2
```
### setup firewall for vpc-sevice-staging 
```
- fill in name allow-service-staging
- choose network <vpc-staging>
- target <Specified target tags>
- target tags <service>
- ipv4 ranges <0.0.0.0/0>
- Protocols and ports 
    - Specified protocols and ports
        - check tcp fill in ports <5000>
```

### setup firewall for vpc-ssh 
```
- fill in name allow-ssh
- choose network <vpc-staging>
- target <Specified target tags>
- target tags <ssh>
- ipv4 ranges <0.0.0.0/0>
- Protocols and ports 
    - Specified protocols and ports
        - check tcp fill in ports 22>
```

### setup firewall for vpc-ssh 
```
- fill in name allow-internal
- choose network <vpc-staging>
- target <Specified target tags>
- target tags <allow-internal>
- ipv4 ranges <10.184.0.0/20>
- Protocols and ports 
    - Specified protocols and ports
        - check tcp fill in ports <0-65535>
        - check udpfill in ports <0-65535>
        - check other fill in protocol icmp

```

### OR you can use google cloud sheel and paste this comment
```
    gcloud compute --project=capstone-project-arahku firewall-rules create allow-5000 --direction=INGRESS --priority=1000 --network=vpc-staging --action=ALLOW --rules=tcp:5000 --source-ranges=0.0.0.0/0 --target-tags=service

    gcloud compute --project=capstone-project-arahku firewall-rules create allow-ssh --direction=INGRESS --priority=1000 --network=vpc-staging --action=ALLOW --rules=tcp:22 --source-ranges=0.0.0.0/0 --target-tags=ssh

    gcloud compute --project=capstone-project-arahku firewall-rules create allow-internal --direction=INGRESS --priority=1000 --network=vpc-restful-api --action=ALLOW --rules=tcp:0-65535,udp:0-65535,icmp --source-ranges=10.184.0.0/20 --target-tags=allow-internal

```