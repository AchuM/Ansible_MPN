resource "aws_instance" "MPN" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  key_name = "Achu2"

  tags {
    Name = "MPN"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    agent       = false
    private_key = "${file("${var.ssh_key_private}")}"
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=\"False\" ansible-playbook -u root --private-key=\"${var.ssh_key_private}\" --extra-vars 'ip=${self.public_ip},' roles/playbooks.yml"
  }
}
