# Infraestrutura Terraform

Este repositório contém a configuração da infraestrutura para os ambientes dev, staging e prod usando Terraform.

## Estrutura do Projeto

- **modules/**: Contém módulos reutilizáveis para VPC, EC2, Load Balancer e Security Groups.
- **environments/**: Contém as configurações específicas para cada ambiente.

## Ambientes

- **Dev**: Configurações voltadas para desenvolvimento.
- **Staging**: Configurações para testes antes da produção.
- **Prod**: Configurações para o ambiente de produção.

## Instruções de Implantação

1. Navegue até o diretório do ambiente desejado (dev/staging/prod).
2. Execute `terraform init` para inicializar os provedores.
3. Execute `terraform plan` para revisar as alterações.
4. Execute `terraform apply` para aplicar as alterações.

## Segurança

As credenciais sensíveis devem ser armazenadas fora do código utilizando o AWS Secrets Manager.
