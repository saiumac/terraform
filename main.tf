              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "public_instance"
  }

  root_block_device {
    volume_size = 30
    volume_type = "gp2"
  }
}

// Output the instance ID and public IP address
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.public_instance.id
}

output "public_ip" {
  description = "The public IP address of the EC2 i>  value       = aws_instance.public_instance.public>}
