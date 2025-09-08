# Hosting a Static Website on S3
Yesterday I know in detail knowledge about S3.<br>
Today I hosted a **static website** on Amazon S3 using `index.html` and `index.js`.  
S3 makes it simple to serve static files like HTML, CSS, JS, and images.

---

## 📝 Steps to Host Static Website on S3

### 1. Create an S3 Bucket
- Open the **S3 console**.
- Click **Create bucket**.
- Give a **unique bucket name** (e.g., `my-static-site-bucket`).
- Select the region (e.g., `us-east-1`).
- **Uncheck "Block all public access"** → confirm.
- Create bucket.

---

### 2. Upload Website Files
- Inside the bucket, click **Upload**.
- Add `index.html` and `index.js`.
- Make sure file names are correct.

---

### 3. Enable Static Website Hosting
- Go to **Bucket → Properties**.
- Scroll down to **Static website hosting**.
- Enable it.
- Choose **Host a static website**.
- Set **Index document** = `index.html`.
- (Optional) Set **Error document** = `error.html`.

---

### 4. Block public access
- Edit the Block public access permission to OFF

### 5. Configure Bucket Policy (Public Access)
- Go to **Permissions → Bucket policy**.
- Add this JSON policy (replace `my-static-site-bucket` with your bucket name):

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::my-static-site-bucket/*"
    }
  ]
}
```
### Accessing the Static page
- Got to index.html object in bucket.
- You will find Object URL click on it. Then you can see the content.
- Make sure your js file dont contain external cdn or apis used, it will trigger cors error by browser.
