module "myec2" {
    source                 = "../../Modules/ec2/v0"
    count = length(var.unique_ids)
    ami                    = var.ami
    instance_type          = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids 
    key_name               = var.key_name
    name = "${var.project_name}-${var.unique_ids[count.index]}"
    project_name = var.project_name
    env = var.env
        user_data = <<-EOF
                        #!/bin/bash
                        exec > /var/log/user-data.log 2>&1
                        echo "Starting Ansible installation on Amazon Linux 2023.."
                        sudo dnf install -y ansible
                        echo "Ansible installation complete. Version info:"
                        ansible --version
                        echo "User data script finished."
                      EOF
     
}