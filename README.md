# example-terraform-lambda-node

Simple example using two AWS Lambdas in NodeJS / ES6 with Terraform

## Summary  

Shows how to wire a few sample Lambdas using NodeJS and JavaScript (ES6) and then deploy them to AWS using Terraform.  Makes use of a simple API Gateway as well as S3 for storage of the zip during deployment.

## Usage

If you'd like to check out this example, perform the following steps:

1. Install and configure both the AWS CLI and Terraform CLI;

2. Clone the project locally;

    > Note: If you are using BASH, you can execute the `terraform.sh` script to handle the installtion of Node dependencies and deploying.  You should not need to continue.  However, if you're not in BASH, then continue with step #3, below.  

3. Install the dependencies for the second Lambda:

    ```bash
    cd %PROJECT_PATH%/lambdas/read-s3
    npm ci
    ```

4. Change directories into the Terraform area:

    ```bash
    cd %PROJECT_PATH%/terraform
    ```

5. Initialize the Terraform resources:

    ```bash
    terraform init
    ```

6. While not essential, you should test the IaC package:

    ```bash
    terraform plan
    ```

7. Finally, once you're happy with the IaC package, deploy it:

    ```bash
    terraform deploy
    ```

8. Play around with the AWS console, call the Lambda from the browser, curl, or your favorite REST testing tool (e.g. Postman, Thunder Client, etc.); and,

9. When you're finished testing, remove everything from AWS:

    ```bash
    terraform destroy
    ```

## Impressions

Interesting pattern.  Not a big fan of reusable modules since they're never actually reusuable outside of the project you're working on.  However, this pattern uses a series of files named for the sequential order of execution when applying the IaC package.  Feels like a happy medium.

## Contact Info

**Fred Lackey**  
[http://fredlackey.com](http://fredlackey.com)  
[fred.lackey@gmail.com](mailto:fred.lackey@gmail.com)  

