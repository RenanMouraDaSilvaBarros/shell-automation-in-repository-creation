# Automatização de Criação de Repositórios no GitHub

Este script Bash foi projetado para automatizar a criação de repositórios locais e remotos no GitHub. Ele executa várias etapas para criar um novo repositório, tanto localmente quanto no GitHub, e estabelece a conexão entre eles.

## Funções

### `createLocalRepository`

Esta função cria um repositório local usando Git, inicializa o Git, cria um arquivo README.md, adiciona-o ao repositório, faz um commit inicial e informa sobre o sucesso na criação do repositório local.

### `createRemoteRepository`

Essa função utiliza a API do GitHub para criar um repositório remoto. Ela recebe informações de autenticação (nome de usuário e token do GitHub) e o nome do repositório a ser criado. Após a criação do repositório remoto, adiciona-o como remoto ao repositório local, configura o upstream e abre o link do repositório remoto no navegador padrão.

## Uso

1. **Execução do Script:**

   O script solicitará o nome do repositório a ser criado.

2. **Criação do Repositório Local:**

   O script perguntará se deseja criar um repositório local. Responda '1' para sim ou '0' para não.

   - Se '1' for selecionado, o script executará a função `createLocalRepository` para criar o repositório local.

3. **Criação do Repositório Remoto:**

   O script perguntará se deseja criar um repositório remoto. Responda '1' para sim ou '0' para não.

   - Se '1' for selecionado, o script executará a função `createRemoteRepository` para criar o repositório remoto no GitHub.

## Observações

- Certifique-se de ter permissões adequadas para criar repositórios no GitHub.
- As variáveis `$USER_GITHUB` e `$TOKEN_GITHUB` devem ser configuradas com as credenciais corretas do GitHub para a criação do repositório remoto.

Este script é uma ferramenta de automação e pode ser ajustado conforme necessário para atender às suas necessidades específicas.
