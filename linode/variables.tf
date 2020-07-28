variable "token" {
  type        = string
  description = "Informe o Linode API Access Token"
}

variable "instances_name" {
  type        = list(string)
  default     = ["server-1"]
  description = "Nome da(s) instância(s)"
}

variable "region" {
  type    = string
  default = "us-southeast"
}

variable "root_pass" {
  type        = string
  description = "Informe a senha do usuário root"
}

variable "authorized_keys" {
  type        = list(string)
  default     = []
  description = "Zero ou mais chaves RSA para autenticação SSH"
}

variable "identification_tags" {
  type        = list(string)
  default     = []
  description = "Zero ou mais tags utilizadas para identificação do elemento"
}
