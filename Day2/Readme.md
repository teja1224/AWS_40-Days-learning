# AWS IAM (Identity and Access Management)

IAM is the **security backbone of AWS**.  
It helps us control **who can access what** inside our AWS account.

---
I have created a test user and login with IAM user. I observed access denied for all services as I didnot give any policies to test user. Later I login in root user and given S3 service policy permission. And checked with IAM test user now I can list and create sample S3 bucket.
- Below I have given detailed explanation on each topic in IAM.

---

## 1. IAM Users
- An **IAM User** represents a single person or an application.  
- Each user can have:
  - **Username & Password** → for AWS Management Console access.  
- Example:
  - `teja_dev` → Developer who logs in to AWS Console.
    
---

## 2. IAM Groups
- A **Group** is a collection of IAM users.  
- Permissions are assigned to the group, and all users in that group inherit those permissions.  
- Makes it easy to manage multiple users.  

Example:
- Group: `Developers` → Has permissions for EC2 and S3.  
- Group: `Admins` → Has full administrative access.  

If company hires a new developer, I just add them to the **Developers group** instead of creating new policies again.

---

## 3. IAM Policies
- **Policies** are JSON documents that define **permissions**.  
- With IAM, you can control and define permissions through policies. Policies are written in JSON format and specify what actions are allowed or denied on specific AWS resources.
- Policies can be attached to IAM entities (users, groups, or roles) to grant or restrict access to AWS services and resources.
- IAM provides both AWS managed policies (predefined policies maintained by AWS) and customer managed policies (policies created and managed by you).

---

## 4. IAM Roles
- A Role is like a temporary identity with permissions. Unlike users, roles do not have passwords or access keys.
-  Roles are typically used by applications or services that need to access AWS resources on behalf of users or other services.
-  Roles have associated policies that define the permissions and actions allowed for the role.

---

## Summary

- Users → Individual identities (person/app).
- Groups → Collection of users with shared permissions.
- Policies → JSON rules that define what actions are allowed/denied.
- Roles → Temporary identities assumed by AWS services or external users.
