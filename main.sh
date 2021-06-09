aws s3api create-bucket --bucket techino1bucket --region us-east-1
aws ec2 authorize-security-group-ingress --group-id sg-c0c302a4 --protocol tcp --port 22 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-c0c302a4 --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-c0c302a4 --protocol tcp --port 443 --cidr 0.0.0.0/0
aws ec2 run-instances --image-id ami-04bde106886a53080 --instance-type t2.micro --count 1 --region ap-south-1 --subnet-id subnet-877b79ef --key-name bot --security-group-ids sg-c0c302a4 --tag-specifications 'ResourceType=instance,Tags=[{Key=Company,Value=saaspect}]'