# terraform-for-advanced-class

How To Use Ansible with Terraform for Configuration Management

https://www.digitalocean.com/community/tutorials/how-to-use-ansible-with-terraform-for-configuration-management

How To Improve Flexibility Using Terraform Variables, Dependencies, and Conditionals

https://www.digitalocean.com/community/tutorials/how-to-improve-flexibility-using-terraform-variables-dependencies-and-conditionals

How To Protect Sensitive Data in Terraform

https://www.digitalocean.com/community/tutorials/how-to-protect-sensitive-data-in-terraform

How To Deploy Multiple Environments in Your Terraform Project Without Duplicating Code

https://www.digitalocean.com/community/tutorials/how-to-deploy-multiple-environments-with-workspaces-in-your-terraform-project

How To Build a Custom Terraform Module

https://www.digitalocean.com/community/tutorials/how-to-build-a-custom-terraform-module

ElastiCache - Cases 
https://aws.amazon.com/solutions/case-studies/mcdonalds/ 

More Cases 
https://aws.amazon.com/blogs/database/latency-reduction-of-hybrid-architectures-with-amazon-elasticache/#:~:text=Amazon%20ElastiCache%20is%20an%20effective,in%20case%20your%20database%20fails.
 
# Backend Configuration

A backend defines where Terraform stores its state data files.

Terraform uses persisted state data to keep track of the resources it manages. 

Most non-trivial Terraform configurations either integrate with Terraform Cloud or use a backend to store state remotely. 

This lets multiple people access the state data and work together on that collection of infrastructure resources.

# Using a Backend Block

You do not need to configure a backend when using Terraform Cloud because Terraform Cloud automatically manages state in the workspaces associated with your configuration. 

If your configuration includes a cloud block, it cannot include a backend block.

To configure a backend, add a nested backend block within the top-level terraform block.

The following example configures the remote backend.


terraform {
  backend "remote" {
    organization = "example_corp"

    workspaces {
      name = "my-app-prod"
    }
  }
}



# or you can use terraform cloud block 

# terraform cloud block 

terraform 
 cloud{}
