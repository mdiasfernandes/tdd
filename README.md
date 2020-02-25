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