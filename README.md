Once you clone above code to your local repo, following can be used:

$ cd /dev

To Create Stack

$ terraform init

Update variables part of terraform.tfvars file at the location if you are creating a new stack.

$ terraform apply -var-file=preprod.tfvars -auto-approve

After creation of stack, if it is desired to tear down the stack following command is to be used:


To Tear down created Stacks

$ terraform destroy -var-file=preprod.tfvars -atuo-approve

Note: Above terraform code is storing its state in remote S3 bucket “a205915-pageexpress-tfstatebackup“ in ap-south-1 region.
