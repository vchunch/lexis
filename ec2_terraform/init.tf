data "template_cloudinit_config" "config" {
  gzip          = false
  base64_encode = false

  #!/bin/bash

  part {
    content_type = "text/x-shellscript"
    content      = <<-EOF
    #!/bin/bash -xe
    export AWS_DEFAULT_REGION=us-east-1
    mkdir /var/log/bootstrap-logs
    exec > >(tee /var/log/bootstrap-logs/application-setup.log|logger -t application-setup -s 2>/dev/console) 2>&1
    echo "Init script started at $(date)"

        # Create folder for html pages
    mkdir -p /var/www/html

    # Copy Application code Artefacts from S3 bucket
    sudo aws s3 cp s3://lexis-nexis-risk-code-bucket/index.html /var/www/html/index.html
    
    #start httpd service
    sudo systemctl restart httpd

    EOF
  }
}