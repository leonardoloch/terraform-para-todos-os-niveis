# Curso de Terraform

Bem-vindo ao repositório do curso sobre Terraform! Este repositório contém todo o material necessário para acompanhar e concluir o curso.

## Sumário

- [Introdução](#introdução)
- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Estrutura do Curso](#estrutura-do-curso)
- [Recursos Adicionais](#recursos-adicionais)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Introdução

Neste curso, você aprenderá a usar o Terraform, uma ferramenta de IaC (Infraestrutura como Código) que permite definir e provisionar a infraestrutura em várias plataformas de nuvem usando um arquivo de configuração declarativo.

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes itens instalados e configurados:

- [Terraform](https://www.terraform.io/downloads.html)
- [TF-Switch](https://tfswitch.warrensbox.com/Installation/) [Opcional]
- [IDE-VSCode](https://code.visualstudio.com/download) [Sugestão]
- Conta na AWS.

## Instalação

1. Clone este repositório para o seu ambiente local:
    ```sh
    git clone https://github.com/seu-usuario/terraform-para-todos-os-niveis.git
    cd terraform-para-todos-os-niveis
    ```

2. Siga as instruções em cada pasta de aula para configurar o ambiente e começar a trabalhar.

## Estrutura do Curso

O curso está organizado da seguinte forma:

- `fundamentos-terraform/`: Fundamentos do Terraform
- `terraform-commandos/`: Comandos
- `aws-recursos/`: Criando Um servidor na AWS
- `estruturas-de-dados/`: Estruturas de Dados
- `modulos/`: Modulo
- `terraform-state/`: Terraform State

Cada pasta contém exemplos de código, scripts e exercícios práticos para ajudá-lo a entender os conceitos abordados.

Para cada novo modulo reutilize o `terraform state` passado, sendo assim copie o arquivo `terraform.tfstate` para o proximo modulo que estas trabalhando

## Recursos Adicionais

- [Documentação Oficial do Terraform](https://www.terraform.io/docs)
- [Tutorial Interativo do Terraform](https://learn.hashicorp.com/terraform)
- [Comunidade do Terraform no GitHub](https://github.com/hashicorp/terraform)

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests.

1. Fork o repositório
2. Crie sua feature branch (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Envie para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## Licença
Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
