## Hands-On: Launching My First EC2 Instance
As I am learning at present I am using free tier to get basic understanding over it.

### Step 1: Open EC2 Service
- Go to [AWS Management Console](https://console.aws.amazon.com/).  
- Search for **EC2** → Click **Launch Instance**.
- Select a specific region for creating instance. For me I selecte US-North.V

### Step 2: Choose AMI (Amazon Machine Image) OS for server
- Select **ubantu** (Free Tier eligible).
- Also select the OS version.

### Step 3: Choose Instance Type
- Select **t3.micro** (Free Tier). (750 hrs for month for 12 months free) (2 CPU and 1GB Memory) -> Previous its t2.micro
- We can create 2, 3 instances within 750 hrs by stopping after usage. After 750 it will charge.

### Step 4: Configure Key Pair
- Importance thing in EC2 as it is only way to login in to our instance. Combination of private and public key (dont share to anyone).
- Create a new **Key Pair** (RSA → `.pem` file).  
- Download and save it securely.  

### Step 5: Network Settings
- I keep it as it is for now I learn about it later sessions indepth.
- It is for security configurations.
  
### Step 6: Launch the Instance
- Click **Launch** → Instance will start running.
- click on the instance id you'll get the complete instance details.
## Connecting to EC2
I present wokring on windows so I need to install putty or mobaxterm as our instance is ubantu.<br>
If you are using linux machine then you can use your terminal.
- we can connect to our EC2 using AWS inbuilt terminal but I am using MobaXterm.
- First, Save the .pem (key pair) safely.
- Go to MobaXterm and select a session give the public IP of EC2 instance and name(ubuntu).
- Select advanced ssh setting select the private key and upload the .pem file here and click OK.
- It may show a popup to accept. Accept that then your virtual server (EC2 instance) is connect successfully.
