resource "aws_security_group" "padrao" {
  name        = "padrao"
  description = "Atividade04-daltro"

  ingress = [
    {
      cidr_blocks      = [
        "0.0.0.0/0",
      ]
      description      = "Acesso para todas as origens"
      from_port        = 0
      ipv6_cidr_blocks = [
        "::/0",
      ]
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  
  egress = [
    {
      cidr_blocks      = [
        "0.0.0.0/0",
      ]
      description      = "Acesso para todas as origens"
      from_port        = 0
      ipv6_cidr_blocks = [
        "::/0",
      ]
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }    
  ]
  

  tags = {
    Name = "padrao"
  }
}
