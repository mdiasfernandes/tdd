# TDD

- `describe`  - Usado para definir um grupo de testes
- `context`   - Agrupa testes associados ao mesmo tema, ajuda a tornar os testes mais legíveis
- `it`        - Bloco usado para definir um teste
- `expect`    - Método utilizado para verificar se o comportamento esperado do código está correto ou não
---
- `Matchers` - Instrução para verificar se determinada condição está sendo atendida ou não, por exemplo, `expect`

# Rails

- `spec_helper.rb`  - Arquivo base de configuração do Rspec, exemplo, se os testes serão executados randomicamente ou não
- `rails_helper.rb` - Carrega as dependências do rails e faz as configs necessárias para que o RSpec rode junto
- `generators`      - Scripts que geram arquivos de testes com a estrutura básica pronta para começar a escrever os meus testes
> MODEL:                `rails generate model user`
> ONLY REQUEST TEST:    `rails generate rspec:request User`
> SHOW ALL OPTIONS      `rails generate --help | grep rspec`

# Testando Models

- `models` - classes Ruby que se conectam às tabelas do BD para permitir uma fácil manipulação delas.
É preciso testá-las para garantir que sua estrutura de dados esteja correta. O momento de realizar esse teste é geralmente quando há algum tipo de validação customizada, por exemplo, dado uma determinada regra de negócio.

- `migration` - Permite editar/alterar o BD de forma estruturada e organizada
- `rails g migration add_name_kind_level_to_user nickname:string kind:integer level:integer` - Cria uma nova migration (nova alteração no BD)
- `rails db:migrate` - Executa todas as migrations no BD que ainda não foram executadas segundo o `Active Record`

- `gem factory bot` - Ferramenta que possibilita manipulação de `records` de forma organizada dentro dos testes.