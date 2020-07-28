# Terraform: Linode Provider

Este é um exemplo de uso do *Terraform* para subida de infraestrutura como código via uso do **Linode Provider**. **Para maiores informações e forma detalhada de uso acesse: https://link.medium.com/40F5KAlob8**

> As palavras-chave "DEVE", "NÃO DEVE", "REQUER", "DEVERIA", "NÃO DEVERIA", "PODERIA", "NÃO PODERIA", "RECOMENDÁVEL", "PODE", e "OPCIONAL" neste documento devem ser interpretadas como descritas no [RFC 2119](http://tools.ietf.org/html/rfc2119). Tradução livre [RFC 2119 pt-br](http://rfc.pt.webiwg.org/rfc2119).


## :round_pushpin: Direto ao ponto

Para começar faça download deste repositório ou realize a clonagem:

```
git clone https://github.com/fabiojaniolima/terraform-examples
```

Após o passo anterior acesse o diretório `terraform-examples`:

```
cd terraform-examples/linode
```

Inicialize o diretório como um projeto do Terraform:

```
terraform init
```

Para visualizar o plano de execução basta rodar:

```
terraform plan
```

### :rocket: Subindo a infra no provedor

> Para seguir com os passos abaixo é importante que você tenha um token de acesso gerado junto ao provider.

Considerando que você definiu o `terraform.tfvars` ou similar, execute a instrução abaixo para aplicar o plano:

```
terraform apply
```

Caso não tenha definido o `terraform.tfvars` ou similar, execute:

```
terraform plan \
  -var "token=${LINODE_TOKEN}" \
  -var 'instances_name=["server-1", "server-2"]' \
  -var "authorized_keys=$(cat $HOME/.ssh/id_rsa.pub)" \
  -var 'identification_tags=["test"]' \
  -var "root_pass=${LINODE_ROOT_PASS}"
```

> Lembre-se de alterar os dados de acordo com a necessidade.

## :memo: Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](../LICENSE) para mais detalhes.
