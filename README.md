# my-web-app

Here is my proposed  solution for the Used case.

### Step to create a complete infra:

Assuming that you have already stored the AWS credential in the your gitlab .

1) Clone the repo 
2) cd ec2_terraform
3) run the command ssh-keygen -f mykey
4) Commit the changes and push the code 

The CI/CD pipeline will built a complete infra for hosting the web page.

At the end of you will see the public IP.

Test:
a) Copy the ip and put in web-browser http://<Public_IP>
b) Commad line $curl http://<public_IP>
c) Login to the server and chek log

lexis-nexis/ec2_terraform - (main) > ssh -i mykey ec2-user@<public_ip>



