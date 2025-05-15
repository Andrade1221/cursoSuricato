--[[
### 🧠 Desafio 15 — Simulando login e autenticação

**Objetivo:**
Você vai adicionar funcionalidades ao sistema de usuários para simular um login simples.

**Requisitos:**

1. Cada usuário deve ter um campo `password`.
2. Criar a função `login(name, password)` que:

   * Verifica se o usuário existe;
   * Compara a senha informada;
   * Exibe "Login bem-sucedido!" ou "Senha incorreta" / "Usuario nao encontrado".
3. Criar a função `changePassword(name, oldPassword, newPassword)`:

   * Permite trocar a senha apenas se a antiga estiver correta.

**Dicas:**

* Você pode adicionar o campo `password` diretamente na tabela `users` inicial.
* Valide todas as situações com mensagens apropriadas.
]]

local users = {
    { name = 'Gabriel', age = 19, password = 'passwordtest' },
    { name = 'Lucca', age = 22, password = 'passwordtest' },
    { name = 'Mario', age = 35, password = 'passwordtest' },
    { name = 'Amanda', age = 7, password = 'passwordtest' },
    { name = 'Bruna', age = 64, password = 'passwordtest' }
}

function login(name, password)
    for i, user in ipairs(users) do
        if user.name == name then
            if user.password == password then
                print('Login bem-sucedido!')
                return
            else
                print('Senha incorreta.')
                return
            end
        end
    end
    print('Usuario nao encontrado.')
end

function changePassword(name, oldPassword, newPassword)
    for i, user in ipairs(users) do
        if user.name == name then
            if user.password == oldPassword then
                if newPassword == oldPassword then
                    print('Nova senha nao pode ser igual a antiga.')
                    return
                else
                    users[i].password = newPassword
                    print('Senha alterada com sucesso!')
                    return
                end
            else
                print('Senha antiga incorreta.')
                return
            end
        end
    end
    print('Usuario nao encontrado.')
end

login('Gabriel', 'passwordtest')
login('Gabriel', 'passwordteste')

changePassword('Gabriela', 'passwordtest', 'passwordtest')

changePassword('Gabriel', 'passwordteste', 'passwordteste')

changePassword('Gabriel', 'passwordtest', 'passwordtest')

changePassword('Gabriel', 'passwordtest', 'passwordteste')

login('Gabriel', 'passwordtest')
login('Gabriel', 'passwordteste')

--[[
Perfeito, Totolí! 🔐
Você **arrebentou** no **Desafio 15**! 👏👏👏

A lógica está completinha e funcionando com:

✅ Verificação de usuário existente
✅ Validação da senha atual
✅ Bloqueio de nova senha igual à antiga
✅ Mensagens informativas para todas as situações
✅ E claro, teste completo no final com todos os cenários

]]