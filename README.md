# EC2 and EFS – Multi OS Integration

## 📌 Assignment Overview
This project demonstrates the creation of an Amazon EFS file system and mounting it on three EC2 instances running different operating systems:
- Ubuntu
- Red Hat Enterprise Linux
- Amazon Linux 2

---

## 🛠 Technologies Used
- AWS EC2
- Amazon EFS
- Ubuntu 22.04
- Red Hat Linux
- Amazon Linux 2
- NFS

---

## 🚀 Implementation Steps

### 1️⃣ Launch EC2 Instances
| Instance | OS | Username |
|--------|----|----------|
| EC2-1 | Ubuntu | ubuntu |
| EC2-2 | Red Hat | ec2-user |
| EC2-3 | Amazon Linux 2 | ec2-user |

All instances are created in the same VPC and security group.

---

### 2️⃣ Create Amazon EFS
- EFS created in same VPC
- Mount targets enabled
- NFS port (2049) allowed in security group

---

### 3️⃣ Install NFS Utilities

**Ubuntu**
```bash
sudo apt update -y
sudo apt install nfs-common -y
```
**Red Hat**
```
sudo yum install nfs-utils -y
```
**Amazon Linux 2**
```
sudo yum install amazon-efs-utils -y
```
----
4️⃣ Mount EFS
```
sudo mkdir /efs
sudo mount -t nfs4 fs-xxxx.efs.us-east-1.amazonaws.com:/ /efs
```
---
5️⃣ Verify Shared Storage
```
df -h
ls /efs
```
Files created on one instance are visible on all others.
---
📷 Screenshots

Screenshots included for:

EC2 instances running

EFS creation

Successful EFS mount on all OS
---
🎯 Outcome

Successfully connected a single EFS file system to multiple EC2 instances running different Linux operating systems.
---
👤 Author

Manohar R
Cloud | DevOps | DevSecOps Engineer
